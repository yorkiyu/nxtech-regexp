# 特殊字符

特殊字符，指在正则中有特殊含义的字符

## 特殊字符集

> 若要匹配特殊字符，必须首先使字符"转义"，即，将反斜杠字符 放在它们前面

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x7279;&#x522B;&#x5B57;&#x7B26;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">$</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5339;&#x914D;&#x8F93;&#x5165;&#x5B57;&#x7B26;&#x4E32;&#x7684;&#x7ED3;&#x5C3E;&#x4F4D;&#x7F6E;</li>
          <li>&#x82E5;&#x8BBE;&#x7F6E;&#x4E86;&#x6B63;&#x5219;&#x5BF9;&#x8C61;&#x7684;m&#x5C5E;&#x6027;&#xFF0C;&#x5219;
            $ &#x4E5F;&#x5339;&#x914D; &apos;\n&apos; &#x6216; &apos;\r&apos;</li>
          <li>&#x8981;&#x5339;&#x914D; $ &#x5B57;&#x7B26;&#x672C;&#x8EAB;&#xFF0C;&#x4F7F;&#x7528;
            \$</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">( )</td>
      <td style="text-align:left">
        <ul>
          <li>&#x6807;&#x8BB0;&#x4E00;&#x4E2A;&#x5B50;&#x8868;&#x8FBE;&#x5F0F;&#x7684;&#x5F00;&#x59CB;&#x548C;&#x7ED3;&#x675F;&#x4F4D;&#x7F6E;</li>
          <li>&#x8981;&#x5339;&#x914D;&#x8FD9;&#x4E9B;&#x5B57;&#x7B26;&#xFF0C;&#x4F7F;&#x7528;
            \( &#x548C; \)</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">*</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5339;&#x914D;&#x524D;&#x9762;&#x7684;&#x5B50;&#x8868;&#x8FBE;&#x5F0F;&#x96F6;&#x6B21;&#x6216;&#x591A;&#x6B21;</li>
          <li>&#x8981;&#x5339;&#x914D; * &#x5B57;&#x7B26;&#xFF0C;&#x4F7F;&#x7528; \*</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">+</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5339;&#x914D;&#x524D;&#x9762;&#x7684;&#x5B50;&#x8868;&#x8FBE;&#x5F0F;&#x4E00;&#x6B21;&#x6216;&#x591A;&#x6B21;</li>
          <li>&#x8981;&#x5339;&#x914D; + &#x5B57;&#x7B26;&#xFF0C;&#x4F7F;&#x7528; \+</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">.</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5339;&#x914D;&#x9664;&#x6362;&#x884C;&#x7B26; \n &#x4E4B;&#x5916;&#x7684;&#x4EFB;&#x4F55;&#x5355;&#x5B57;&#x7B26;</li>
          <li>&#x8981;&#x5339;&#x914D; . &#xFF0C;&#x4F7F;&#x7528; \.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">[</td>
      <td style="text-align:left">
        <ul>
          <li>&#x6807;&#x8BB0;&#x4E00;&#x4E2A;&#x4E2D;&#x62EC;&#x53F7;&#x8868;&#x8FBE;&#x5F0F;&#x7684;&#x5F00;&#x59CB;</li>
          <li>&#x8981;&#x5339;&#x914D; [&#xFF0C;&#x4F7F;&#x7528; \[</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">?</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5339;&#x914D;&#x524D;&#x9762;&#x7684;&#x5B50;&#x8868;&#x8FBE;&#x5F0F;&#x96F6;&#x6B21;&#x6216;&#x4E00;&#x6B21;</li>
          <li>&#x6216;&#x6307;&#x660E;&#x4E00;&#x4E2A;&#x975E;&#x8D2A;&#x5A6A;&#x9650;&#x5B9A;&#x7B26;</li>
          <li>&#x8981;&#x5339;&#x914D; ? &#x5B57;&#x7B26;&#xFF0C;&#x4F7F;&#x7528; \?</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">\</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5C06;&#x4E0B;&#x4E00;&#x4E2A;&#x5B57;&#x7B26;&#x6807;&#x8BB0;&#x4E3A;&#x6216;&#x7279;&#x6B8A;&#x5B57;&#x7B26;</li>
          <li>&#x6216;&#x539F;&#x4E49;&#x5B57;&#x7B26;</li>
          <li>&#x6216;&#x5411;&#x540E;&#x5F15;&#x7528;</li>
          <li>&#x6216;&#x516B;&#x8FDB;&#x5236;&#x8F6C;&#x4E49;&#x7B26;</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">^</td>
      <td style="text-align:left">
        <ul>
          <li>&#x5339;&#x914D;&#x8F93;&#x5165;&#x5B57;&#x7B26;&#x4E32;&#x7684;&#x5F00;&#x59CB;&#x4F4D;&#x7F6E;</li>
          <li>&#x5728;&#x65B9;&#x62EC;&#x53F7;&#x4E2D;&#x4F7F;&#x7528;&#xFF0C;&#x8868;&#x793A;&#x4E0D;&#x63A5;&#x53D7;&#x8BE5;&#x5B57;&#x7B26;&#x96C6;&#x5408;</li>
          <li>&#x8981;&#x5339;&#x914D; ^ &#x5B57;&#x7B26;&#x672C;&#x8EAB;&#xFF0C;&#x4F7F;&#x7528;
            \^</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">{</td>
      <td style="text-align:left">
        <ul>
          <li>&#x6807;&#x8BB0;&#x9650;&#x5B9A;&#x7B26;&#x8868;&#x8FBE;&#x5F0F;&#x7684;&#x5F00;&#x59CB;</li>
          <li>&#x8981;&#x5339;&#x914D; {&#xFF0C;&#x4F7F;&#x7528; \{</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">|</td>
      <td style="text-align:left">
        <ul>
          <li>&#x6307;&#x660E;&#x4E24;&#x9879;&#x4E4B;&#x95F4;&#x5339;&#x914D;&#x5176;&#x4E2D;&#x4E00;&#x4E2A;</li>
          <li>&#x8981;&#x5339;&#x914D; |&#xFF0C;&#x4F7F;&#x7528; \|</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

## 特殊字符模式

### 无转义符

当正则模式要匹配”特殊字符“时，必须在”特殊字符“前加反斜杠"\"，否则会报错；如下述，正则表达式中有特殊字符”\[“，未使用\进行转义，会报SyntaxError

```javascript
/abc[123/.exec('abc[123'); // 报错 SyntaxError

/** Uncaught SyntaxError: Invalid regular expression: missing **/
```

### 转义符使用

当正则模式要匹配”特殊字符“时，在”特殊字符“前加反斜杠"\"，则可正常匹配该“特殊字符”

```javascript
/abc\[123/.exec('abc[123'); // 匹配
/** ["abc[123", index: 0, input: "abc[123", groups: undefined] **/
```

![](../.gitbook/assets/image%20%2817%29.png)

## 斜杠

### 正斜杠"\"

正斜杠常见用途汇总

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x7528;&#x9014;</th>
      <th style="text-align:left">&#x793A;&#x4F8B;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x64CD;&#x4F5C;&#x7CFB;&#x7EDF;&#x8DEF;&#x5F84;&#x5206;&#x9694;&#x7B26;</td>
      <td
      style="text-align:left">
        <ul>
          <li>window&#x7CFB;&#x7EDF;&#xFF1A;C:/Windows/addins</li>
          <li>Unitx&#x7CFB;&#x7EDF;&#xFF1A;/usr/local/services</li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">Url&#x5730;&#x5740;&#x6807;&#x8BB0;&#x7B26;&#x4E0E;&#x8DEF;&#x5F84;&#x5206;&#x5272;&#x7B26;</td>
      <td
      style="text-align:left">
        <p>&#x5982;&#xFF1A;https://www.qq.com/ch/photo</p>
        <ul>
          <li>&#x5730;&#x5740;&#x6807;&#x8BB0;&#x7B26;&#xFF1A;https:<b>//</b>
          </li>
          <li>&#x8DEF;&#x5F84;&#x5206;&#x9694;&#x7B26;&#xFF1A;www.qq.com<b>/ch/photo/</b>
          </li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BA1;&#x7B97;&#x7B26;&#x53F7;&#x9664;&#xF7;</td>
      <td style="text-align:left">&#x5728;&#x7F16;&#x7A0B;&#x4E2D;2&#xF7;4&#x8868;&#x793A;&#x4E3A;2<b>/</b>4</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4EE3;&#x7801;&#x6CE8;&#x91CA;//</td>
      <td style="text-align:left">
        <p>&#x5728;C++/C#/Java/JavaScript/PHP/JS&#x7B49;&#x4E3B;&#x6D41;&#x7F16;&#x7A0B;&#x8BED;&#x8A00;&#x4E2D;</p>
        <p>&#x53CC;//&#x8868;&#x793A;&#x4EE3;&#x7801;&#x6CE8;&#x91CA;</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x65E5;&#x671F;&#x5206;&#x9694;&#x7B26;</td>
      <td style="text-align:left">&#x5982;2019&#x5E74;7&#x6708;2&#x53F7;&#x53EF;&#x8868;&#x793A;&#x4E3A;07/02/2019</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x6587;&#x7AE0;&#x91CC;&#x8868;&#x793A;&#x201C;&#x6216;&#x201D;&#xFF0C;&#x201C;&#x548C;&#x201D;</td>
      <td
      style="text-align:left">&#x6211;&#x638C;&#x63E1;C++/C#/Java/JavaScript/PHP/JS&#x7B49;&#x8BED;&#x8A00;</td>
    </tr>
  </tbody>
</table>

### 反斜杠“\”

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x7528;&#x9014;</th>
      <th style="text-align:left">&#x793A;&#x5217;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x64CD;&#x4F5C;&#x7CFB;&#x7EDF;&#x8DEF;&#x5F84;&#x5206;&#x9694;&#x7B26;</td>
      <td
      style="text-align:left">
        <ul>
          <li>window&#x7CFB;&#x7EDF;&#xFF1A;C:\Windows\addins</li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8F6C;&#x4E49;&#x7B26;</td>
      <td style="text-align:left">
        <p>&#x8F6C;&#x4E49;&#x5B57;&#x7B26;&#x653E;&#x5728;&#x4E00;&#x4E2A;&#x5B57;&#x7B26;&#x5E8F;&#x5217;&#x4E2D;&#x65F6;&#xFF0C;&#x53EF;&#x5BF9;&#x5B83;&#x540E;&#x7EED;&#x51E0;&#x4E2A;&#x5B57;&#x7B26;&#x91C7;&#x53D6;&#x66FF;&#x4EE3;&#x89E3;&#x91CA;</p>
        <ul>
          <li>&#x56DE;&#x8F66;&#xFF1A;\r</li>
          <li>&#x6362;&#x884C;&#xFF1A;\n</li>
          <li>&#x6362;&#x9875;&#xFF1A;\f</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x5F3A;&#x5236;&#x6362;&#x884C;&#x7B26;</td>
      <td style="text-align:left">
        <p>&#x5728;linux&#x4E2D;&#xFF0C;&#x53CD;&#x659C;&#x7EBF;&#x5E38;&#x88AB;&#x653E;&#x5728;&#x4E00;&#x884C;&#x7684;&#x672B;&#x5C3E;&#x7528;&#x6765;&#x6307;&#x793A;&#x7F16;&#x8BD1;&#x5668;&#x5FFD;&#x7565;&#x5176;&#x540E;&#x7684;&#x6362;&#x884C;&#x7B26;&#xFF0C;</p>
        <p>&#x4F7F;&#x5F97;&#x4E0B;&#x4E00;&#x884C;&#x4F1A;&#x88AB;&#x5F53;&#x505A;&#x540C;&#x4E00;&#x884C;&#x8BED;&#x53E5;&#xFF0C;&#x5C06;&#x4EE3;&#x7801;&#x62C6;&#x89E3;&#x6210;&#x201C;&#x8FDE;&#x7EED;&#x884C;&#x201D;</p>
        <p></p>
        <p>&#x5982;&#x4E0B;&#xFF0C;&#x5728;linux&#x4E2D;&#x67E5;&#x770B;nginx&#x8FDB;&#x7A0B;&#x7684;&#x547D;&#x4EE4;&#x884C;&#xFF1A;</p>
        <p><code>$ ps -axu \</code>
        </p>
        <p><code>| grep nginx</code>
        </p>
        <p></p>
      </td>
    </tr>
  </tbody>
</table>

### 多个转义符使用含义

```javascript
console.log('\'); // 报错，反斜杠把最后一个引号进行转义，导致第一个引号无配对的结束引号
/** Uncaught SyntaxError: Invalid or unexpected token **/

console.log('\\') // 正确，第一个反斜杠对第二个反斜杠进行转义，输出一个反斜杠
/** / **/

console.log('\\\'); // 报错，第一个转义第二个反斜杠，第三个反斜杠转义最后一个单引号
/** Uncaught SyntaxError: Invalid or unexpected token **/

console.log('\\\\'); // 正确，第一个和第三个反斜杠分别转义紧跟在后面的反斜杠
/** \\ **/
```

```javascript
const regexp = new RegExp('\\.', 'g');
console.log(regexp); // /\./g
console.log(regexp.test('.')); // true
console.log(regexp.test('\.')); // false
console.log(regexp.test('\a')); // false
console.log(regexp.test('.a')); // true
console.log(regexp.test('n.a')); // true
```







