# 定位符

定位符也叫边界（Boundaries），能够将正则表达式固定到行首或行尾

## 定位符集

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x5B57;&#x7B26;</th>
      <th style="text-align:left">&#x542B;&#x4E49;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><code>^</code>
      </td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x8F93;&#x5165;&#x5F00;&#x59CB;</p>
        <p>&#x82E5;&#x591A;&#x884C;&#xFF08;m&#xFF09;&#x6807;&#x5FD7;&#x4E3A; true&#xFF0C;&#x8BE5;&#x5B57;&#x7B26;&#x4E5F;&#x4F1A;&#x5339;&#x914D;&#x65AD;&#x884C;&#x7B26;&#x540E;&#x7684;&#x5F00;&#x59CB;</p>
        <p>&#x793A;&#x4F8B;&#xFF1A;<code>/^R/</code> &#x4E0D;&#x5339;&#x914D; &quot;regexp&quot;
          &#x4E2D;&#x7684; &quot;r&quot;&#xFF0C;&#x4F46;&#x5339;&#x914D; &quot;RegExp&quot;
          &#x4E2D;&#x7684; &quot;R&quot;&#x3002;</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>$</code>
      </td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x8F93;&#x5165;&#x7ED3;&#x5C3E;</p>
        <p>&#x82E5;&#x591A;&#x884C;&#xFF08;m&#xFF09;&#x6807;&#x5FD7;&#x4E3A; true&#xFF0C;&#x8BE5;&#x5B57;&#x7B26;&#x4E5F;&#x4F1A;&#x5339;&#x914D;&#x65AD;&#x884C;&#x7B26;&#x7684;&#x524D;&#x7684;&#x7ED3;&#x5C3E;</p>
        <p>&#x793A;&#x4F8B;&#xFF1A;<code>/Exp$/</code> &#x4E0D;&#x5339;&#x914D; &quot;regexp&quot;
          &#x4E2D;&#x7684; &quot;&quot;exp&#xFF0C;&#x4F46;&#x5339;&#x914D; &quot;RegExp&quot;
          &#x4E2D;&#x7684; &quot;Exp&#x201D;</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>\b</code>
      </td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x4E00;&#x4E2A;&#x5355;&#x8BCD;&#x8FB9;&#x754C;&#xFF0C;&#x5373;&#x5355;&#x8BCD;&#x4E0E;&#x7A7A;&#x683C;&#xFF0C;&#x6807;&#x70B9;&#x7B26;&#x53F7;&#x7B49;&#x95F4;&#x7684;&#x4F4D;&#x7F6E;</p>
        <p>&#x793A;&#x4F8B;&#xFF1A;<code>/\bRegExp/</code> &#x5339;&#x914D; &quot;The
          RegExp&quot; &#x4E2D;&#x7684; &quot;RegExp&quot;</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>\B</code>
      </td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x4E00;&#x4E2A;&#x96F6;&#x5BBD;&#x975E;&#x5355;&#x8BCD;&#x8FB9;&#x754C;&#xFF08;zero-width
          non-word boundary</p>
        <p>&#x793A;&#x4F8B;&#xFF1A;<code>/\BExp/</code> &#x5339;&#x914D; &quot;The
          RegExp&quot; &#x4E2D;&#x7684; &quot;Exp&quot;</p>
      </td>
    </tr>
  </tbody>
</table>

## 定位符模式

* 输入开始与结尾边界

下述使用了^与$符，因此仅字符串的首尾与模式一致时，才能匹配成功

```javascript
const regexp = /^一起学习[\d]{1,2}\s(RegExp)$/g
regexp.exec('一起学习01 RegExp'); // 匹配
regexp.exec('我们一起学习01 RegExp吗？'); // 不匹
```

![](../.gitbook/assets/image%20%283%29.png)

* 单词模式边界

```javascript
// 匹配一个单词边界
const regexp_b = /\bRegExp/;
regexp_b.exec('The RegExp Tech'); // 匹配
regexp_b.exec('TheRegExpTech'); // 不匹配

// 匹配一个零宽非单词边界
const regexp_B = /\BRegExp/;
regexp_B.exec('TheRegExpTech'); // 匹配
regexp_B.exec('The RegExp Tech'); // 不匹配
```

![](../.gitbook/assets/image%20%2819%29.png)

![](../.gitbook/assets/image%20%2836%29.png)

