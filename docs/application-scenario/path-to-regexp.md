# path-to-regexp

在vue-router/react-router/koa-router等路由工具中，定义路由格式形如：`/user/:name`  或者其他更复杂的路由匹配。其实现均依赖path-to-regexp.js，本章将和读者一起深入探究path-to-regexp实现原理，同时加强对正则表达式的理解

path-to-regex项目地址[https://github.com/pillarjs/path-to-regexp](https://github.com/pillarjs/path-to-regexp)

## 使用方法

```javascript
const pathToRegexp = require('path-to-regexp')

// pathToRegexp(path, keys?, options?)
// pathToRegexp.parse(path)
// pathToRegexp.compile(path)
```

* **path** 字符串/字符串数组/正则表达式
* **keys** path路径中捕获到的匹配项等
* **options 配置项**
  * **sensitive** 如果为 `true` 正则表达式大小写敏感 \(默认: `false`\)
  * **strict** 如果为`true` 正则表达式允许可选的尾随分隔符匹配 \(default: `false`\)
  * **end** 如果为 `true` 正则表达式将从字符串的结尾匹配 \(default: `true`\)
  * **start** 如果为 `true` 正则表达式将从字符串的开头匹配 \(default: `true`\)
  * **delimiter** 默认分割符号 \(default: `'/'`\)
  * **endsWith** Optional character, or list of characters, to treat as "end" characters
  * **whitelist** 解析时要考虑分隔符的字符列表 \(default: `undefined`, any character\)

```javascript
const keys = []
const regexp = pathToRegexp('/foo/:bar', keys)
// regexp = /^\/foo\/([^\/]+?)\/?$/i
// keys = [{ name: 'bar', prefix: '/', delimiter: '/', optional: false, repeat: false, pattern: '[^\\/]+?' }]
```

## 暴露函数

使用module.exports对模块外暴露下述方法

```javascript
// 获取路由路径对应的regexp
module.exports = pathToRegexp
// 解析路由路径，得到keys值
module.exports.parse = parse
module.exports.compile = compile
module.exports.tokensToFunction = tokensToFunction
module.exports.tokensToRegExp = tokensToRegExp
```

## 全局变量

全局变量中定义了路由默认分割符，以及路由匹配模式

```javascript
/**
 * 默认分隔符为正斜杠/
 */
var DEFAULT_DELIMITER = '/'

/**
 * The main path matching regexp utility.
 *
 * @type {RegExp}
 */
var PATH_REGEXP = new RegExp([
  // 匹配出现的转义字符
  // 允许用户转义不会转换的特殊字符
  '(\\\\.)',
  // 将Express-style参数和未命名参数与前缀和可选后缀进行匹配
  // 匹配结果数组形式：
  // ":test(\\d+)?" => ["test", "\d+", undefined, "?"]
  // "(\\d+)"  => [undefined, undefined, "\d+", undefined]
  '(?:\\:(\\w+)(?:\\(((?:\\\\.|[^\\\\()])+)\\))?|\\(((?:\\\\.|[^\\\\()])+)\\))([+*?])?'
].join('|'), 'g');
/**
PATH_REGEXP输出：
/(\\.)|(?:\:(\w+)(?:\(((?:\\.|[^\\()])+)\))?|\(((?:\\.|[^\\()])+)\))([+*?])?/g
**/
```

![](../.gitbook/assets/image%20%2831%29.png)

从上述正则可视化图中可知，该正则匹配可拆分为3种子正则表达式，分别是：`“(\\\\.)”`，`“(?:\\:(\\w+)(?:\\(((?:\\\\.|)+)\\))?)([+*?])?”`，`“(?:\\(((?:\\\\.|)+)\\))([+*?])?”`；以下分别举例讲解：

* 匹配转义模式

匹配字符串中包含转义\字符的路径，如：`"/user/\\?"`

```javascript
// 正则字面量中\\匹配双斜杆，.匹配任意一个字符，正则标志符g表示进行全局匹配
var regexp = new RegExp('(\\\\.)', g); 
// /\\./g

regexp.exec('/user/\\?'); 
//匹配数组：["\?", index: 6, input: "/user/\?", groups: undefined]
```

* 匹配命名路由参数，即：包含:key关键字模式

该匹配模式中，有2种子类型匹配模式，分别是:key，以及限制key模式的正则；可匹配路径，如：“/user/:id”，“/user/:id?”，“/user/:id\(\\d{8}\)”，“/user/:id\(\\d{8}\)?”，其中:key\(\)，括号中的为正则表达式字符串

```javascript
var regexp = new RegExp('(?:\\:(\\w+)(?:\\(((?:\\\\.|[^\\\\()])+)\\))?)([+*?])?');
// /(?:\:(\w+)(?:\(((?:\\.|[^\\()])+)\))?)([+*?])?/

// 路径/user/:id
regexp.exec('/user/:id');
//匹配数组：[":id", "id", undefined, index: 5, input: "/use/:id", groups: undefined]

// 路径/user/:id?
regexp.exec('/user/:id?');
//匹配数组：[":id?", "id", undefined, "?", index: 6, input: "/user/:id?", groups: undefined]


// 路径/user/:id(\\d{8})
regexp.exec('/user/:id(\\d{8})');
//匹配数组：[":id(\d{8})", "id", "\d{8}", undefined, index: 6, input: "/user/:id(\d{8})", groups: undefined]

// 路径/user/:id(\\d{8})?
regexp.exec('/user/:id(\\d{8})?');
//匹配数组：[":id(\d{8})?", "id", "\d{8}", "?", index: 6, input: "/user/:id(\d{8})?", groups: undefined]
```

* 匹配无命名路由参数，即：不包含:key关键字模式

该模式可匹配模式，如：/user/\(\[\d\]{8}\)，/user/\(\[\d\]{8}\)?

```javascript
var regexp = new RegExp('(?:\\(((?:\\\\.|[^\\\\()])+)\\))([+*?])?');
// /(?:\(((?:\\.|[^\\()])+)\))([+*?])?/

// 路径/user/([\\d]{8})
regexp.exec('/user/([\\d]{8})');
// 匹配数组：["([\d]{8})", "[\d]{8}", undefined, index: 6, input: "/user/([\d]{8})", groups: undefined]

// 路径/user/([\d]{8})?
regexp.exec('/user/([\d]{8})?');
// 匹配数组：["([\d]{8})?", "[\d]{8}", "?", index: 6, input: "/user/([\d]{8})?", groups: undefined]
```

## 公共函数

path-to-regexp中包含2个对字符串进行编码的函数：escapeString，escapeGroup

* escapeString，对正则中所有特殊字符进行编码

```javascript
var str = '/user(?:/(d{8}))?(?:/)?$/i';
str.replace(/([.+*?=^!:${}()[\]|/\\])/g, '\\$1')
// \/user\(\?\:\/\(d\{8\}\)\)\?\(\?\:\/\)\?\$\/i
```

* escapeGroup，对路由参数中自定义正则表达式进行编码

规定，在路由参数自定义正则表达式中不能存在=!:$/\(\)等正则字符，固把这些字符进行转义

```javascript
var str = '(d{8}$=)';
str.replace(/([=!:$/()])/g, '\\$1')
// "\(d{8}\$\=\)"
```

## 核心方法讲解

首先通过一个例子，了解pathToRegexp的输入和输出，如下输入`“/user/:id(\d{8})?”`时，输出`“/^\/user(?:\/(\d{8}))?(?:\/)?$/i”`

```javascript
var pathToRegexp = require('path-to-regexp')
var regexp = pathToRegexp('/user/:id(\d{8})?');
// 输出：/^\/user(?:\/(\d{8}))?(?:\/)?$/i

// 上述输出正则，可匹配路由/user/12345678
regexp.exec('/user/12345678');
// 匹配数组：["/user/12345678", "12345678", index: 0, input: "/user/12345678", groups: undefined]
```

### pathToRegexp 处理流程

从下图可知，path解析为tokens（parse）与tokens转换为正则（tokensToRegExp）为核心逻辑，接下来的章节将围绕这两个函数进行讲解

![](../.gitbook/assets/image%20%2839%29.png)

### parse

该函数把path路径解析为tokens数组，其中tokens结构为：

```javascript
['无参数部分path路径',
{
      "name": "路由参数名称", // "用户定义key" || 默认分配由0开始,
      "prefix": "参数前缀", // 默认/
      "delimiter": "路径分隔符", // 默认/
      "optional": "路由参数可选，限定符", // 取值，?/*
      "repeat": "路由参数重复，限定符", // 取值，+/*
      "pattern": "路由参数，正则模式" // 用户自定义 或系统默认([^/])?
},{
}]
```

从上述结构可知，tokens由n个token组成，其中每个token中的元素由路由执行正则`PATH_REGEXP`匹配并捕获而得到，那么匹配捕获项怎么和token对应起来呢？见示列：

```javascript
var pathToRegexp = require('path-to-regexp')
var path = '/user/:id(\\d{8})?/([a-z]{4})';
var tokens = pathToRegexp.parse(path);
/**
# path解析过程捕获数组，与输出tokens
# 正则匹配结果数组，与tokens
# 第一次匹配数组：
[ ':id(\\d{8})?',
  undefined,
  'id',
  '\\d{8}',
  undefined,
  '?',
  index: 6,
  input: '/user/:id(\\d{8})?/([a-z]{4})',
  groups: undefined ]

# 第二次匹配数组：
[ '([a-z]{4})',
  undefined,
  undefined,
  undefined,
  '[a-z]{4}',
  undefined,
  index: 18,
  input: '/user/:id(\\d{8})?/([a-z]{4})',
  groups: undefined ]

# tokens  
[ '/user',
  { name: 'id',
    prefix: '/',
    delimiter: '/',
    optional: true,
    repeat: false,
    pattern: '\\d{8}' },
  { name: 0,
    prefix: '/',
    delimiter: '/',
    optional: false,
    repeat: false,
    pattern: '[a-z]{4}' } ]
**/
```

见如下源码：

{% code title="path-to-regexp.js" %}
```javascript
/**
@param {String} str 路由字符串
@param {Object} options 配置参数
**/
function parse (str, options) {
  var tokens = []
  /** 省略部分源码 **/
  var res
  // 循环，知道整个字符串匹配完为止
  while ((res = PATH_REGEXP.exec(str)) !== null) {
    // 匹配字符串
    var m = res[0]
    // 转义
    var escaped = res[1]
    var offset = res.index
    // 第一个参数前的路径
    path += str.slice(index, offset)
    /** 省略部分源码 **/
    var prev = ''
    // 参数名称
    var name = res[2]
    // 命名路由参数捕获正则
    var capture = res[3]
    // 无命名路由参数捕获正则
    var group = res[4]
    // 参数捕获正则的限定符+?*
    var modifier = res[5]
    if (!pathEscaped && path.length) {
      /** 省略部分源码 **/
      if (matches) {
        // 参数名称前的分隔符
        prev = c
        // 截取路径，不包含最后的分隔符/
        path = path.slice(0, k)
      }
    }
    // Push the current path onto the tokens.
    if (path) {
      // 把根路径，放到tokens第一个元素
      tokens.push(path)
      /** 省略部分源码 **/
    }
    
    // 是否重复
    var repeat = modifier === '+' || modifier === '*'
    // 是否可选
    var optional = modifier === '?' || modifier === '*'
    // 路由参数正则
    var pattern = capture || group
    // 路由路径分隔符
    var delimiter = prev || defaultDelimiter
    tokens.push({
      name: name || key++, // 参数名称
      prefix: prev, // 参数前分隔符
      delimiter: delimiter, // 路由参数分隔符
      optional: optional, // 路由参数可选标志
      repeat: repeat, // 路由参数正则重复标志
      pattern: pattern // 路由参数捕获正则表达式
        ? escapeGroup(pattern)
        : '[^' + escapeString(delimiter === defaultDelimiter ? delimiter : (delimiter + defaultDelimiter)) + ']+?'
    })
  }
  /** 省略部分源码 **/
  return tokens
}
```
{% endcode %}

### tokensToRegExp

该函数，把tokens数组转为路由正则表达式，继5.2. 中得到tokens，转换为正则表达式如下：

```javascript
var pathToRegexp = require('path-to-regexp')
var path = '/user/:id(\\d{8})?/([a-z]{4})';
// 把path转为tokens
var tokens = pathToRegexp.parse(path);
/**
tokens 数组
[ '/user',
  { name: 'id',
    prefix: '/',
    delimiter: '/',
    optional: true,
    repeat: false,
    pattern: '\\d{8}' },
  { name: 0,
    prefix: '/',
    delimiter: '/',
    optional: false,
    repeat: false,
    pattern: '[a-z]{4}' } ]
**/
// 把tokens转为正则表达式
var pathRegExp = pathToRegexp.tokensToRegExp(tokens, keys, options);
/**
pathRegExp 值为：
/^\/user(?:\/(\d{8}))?\/([a-z]{4})(?:\/)?$/i
**/
```

见下述，通过分析源码，了解tokens转为正则的实现细节

```javascript
/**
 * @param  {Array}  tokens
 * @param  {Array}  keys
 * @param  {Object} options
 * @return {RegExp}
 */
function tokensToRegExp (tokens, keys, options) {
  /** 省略部分源码 **/
  // 路由默认开始为^
  var route = start ? '^' : ''
  // 遍历tokens，组装得到正则表达式字符串
  for (var i = 0; i < tokens.length; i++) {
    var token = tokens[i]
    // path根路径是字符串，进行转义处理即可
    if (typeof token === 'string') {
      route += escapeString(token)
    } else { // token对象处理
      // 路由参数，重复该参数正则模式拼接((?:[a-z]{4})(?:\/(?:[a-z]{4}))*))?
      var capture = token.repeat
        ? '(?:' + token.pattern + ')(?:' + escapeString(token.delimiter) + '(?:' + token.pattern + '))*'
        : token.pattern
      // 记录token到keys中
      if (keys) keys.push(token)
      // 路由参数，可选该参数正则模式拼接(?:\/(\d{8}))?
      if (token.optional) {
        if (!token.prefix) {
          route += '(' + capture + ')?'
        } else {
          route += '(?:' + escapeString(token.prefix) + '(' + capture + '))?'
        }
      } else {
        // 必须的参数时，正则模式拼接\/(\d{8}))
        route += escapeString(token.prefix) + '(' + capture + ')'
      }
    }
  }
  /** 省略部分源码 **/
  // 把正则字符串转为RegExp表达式
  return new RegExp(route, flags(options))
}
```



