# 正则分析

该章节主要结合具体使用列子，分析中高复杂度的正则表达式

## 提取字符串中用十六进制表示的色值

> 十六进制的色值表示方法有两种，分别是3位数和6位数，并以\#开头，如：白色（\#fff），黑色（\#000000）

```javascript
let regexp = /#([a-f0-9]{3}){1,2}\b/gi;
let str = "color: #3f3; background-color: #AA00ef; and: #abcd";
str.match(regexp); // #3f3 #AA00ef
```

**解析**

* \[a-f0-9\]，十六进制由0-9数字和a-f字母组成，其中字母
* \#**，** 十六进制的色值以**\#**开头
* \(\[a-f0-9\]{3}\){1,2}，十六进制色值有3位和6位，其中{3}表示中括号中的字符出现3次，{1,2}表示圆弧括号中的3个字符重复1次或2次
* \b，每个色值后跟随空格，标点符号等，进而可以使用\b表示一个单词的结束
* gi，正则标志，全局匹配，不区分大小写

![](.gitbook/assets/image%20%2815%29.png)

## 提取字符串中正数

> 提取内容包含正浮点数，正整数，排除0，负数

```javascript
let regexp = /[1-9]\d*(\.\d+)?/g;
let str = "1.5 0 -5 12. 1230.4.";
str.match(regexp); // ["1.5", "5", "12", "1230.4"]
```

**解析**

* \[1-9\]，表示正数以1-9开头，一位数字
* \d\*，表示0-9数字出现0次或多次
* \(\.\d+\)?，表示小数点可有可无

![](.gitbook/assets/image%20%2827%29.png)

## 提取字符串中数字

> 数字包含负数，正数，整数，浮点数，以及0

```javascript
let regexp = /-?\d+(\.\d+)?/g;
let str = "-1.5 0 2 -123.4.";
str.match(regexp); // ["-1.5", "0", "2", "-123.4"]
```

**解析**

* -?，表示匹配负数与正数
* \d+，表示匹配0-9
* \(\.\d+\)?，表示小数点可有可无

![](.gitbook/assets/image%20%2843%29.png)

## 提取html标签名与class属性值

> html标签结构为&lt;h1 id="h1-id" class="h1-tag"&gt;The h1&lt;/h1&gt;，其中h1为标签名，h1-tag为class名称，h1-id为标签id

```javascript
let regexp = /<([a-z\d]+)[^>]*?class="([a-z\d-_]*)"[^>]*>/g;
let str = '<h1 id="h1-id" class="h1-tag" data-name="h1-name">The h1</h1><h2 class="h2-tag"></h2>';
regexp.exec(str);
/**
由于是全局匹配模式，使用exec时，会进行多次匹配，每次匹配的位置使用lastindex标记
第一次匹配数组：[
    "<h1 id="h1-id" class="h1-tag" data-name="h1-name">", 
    "h1", 
    "h1-tag", 
    index: 0, 
    input: "<h1 id="h1-id" class="h1-tag" data-name="h1-name">The h1</h1><h2 class="h2-tag"></h2>", 
    groups: undefined
]

第二次匹配数组： [
    "<h2 class="h2-tag">", 
    "h2", 
    "h2-tag", 
    index: 61, 
    input: "<h1 id="h1-id" class="h1-tag" data-name="h1-name">The h1</h1><h2 class="h2-tag"></h2>", 
    groups: undefined
]
**/ 
```

**解析**

* \(\[a-z\d\]+\)，匹配标签名
* \[^&gt;\]\*?，最小匹配非&gt;字符，若没有最小匹配，则该模式也可以匹配class属性与值
* class="\(\[a-z\d-\_\]\*\)"，匹配class属性值，注意该模式无法匹配多个class值的场景
* \[^&gt;\]\*，尽可能多的匹配非&gt;字符，以便达到标签结束位置

![](.gitbook/assets/image%20%2826%29.png)



