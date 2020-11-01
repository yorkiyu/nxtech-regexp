# JS常用正则表达式函数

### RegExp方法

* **test**

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x540D;&#x79F0;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x51FD;&#x6570;&#x540D;</td>
      <td style="text-align:left">&lt;b&gt;&lt;/b&gt;<a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RegExp/test"><b>test</b></a>&lt;b&gt;&lt;/b&gt;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F5C;&#x7528;</td>
      <td style="text-align:left">&#x6267;&#x884C;&#x4E00;&#x4E2A;&#x68C0;&#x7D22;&#xFF0C;&#x7528;&#x6765;&#x67E5;&#x770B;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x4E0E;&#x6307;&#x5B9A;&#x7684;&#x5B57;&#x7B26;&#x4E32;&#x662F;&#x5426;&#x5339;&#x914D;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BED;&#x6CD5;</td>
      <td style="text-align:left"><code>regExpObject.test(str)</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x53C2;&#x6570;</td>
      <td style="text-align:left">&#x7528;&#x6765;&#x4E0E;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x5339;&#x914D;&#x7684;&#x5B57;&#x7B26;&#x4E32;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x503C;</td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x6210;&#x529F;&#xFF1A;&#x8FD4;&#x56DE;<code>true</code>
        </p>
        <p>&#x5339;&#x914D;&#x5931;&#x8D25;&#xFF1A;&#x8FD4;&#x56DE;<code>false</code>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><code>&#x793A;&#x5217;</code>
      </td>
      <td style="text-align:left"><code>/^[\d]+$/.test(123); // true</code>
      </td>
    </tr>
  </tbody>
</table>

* **exec**

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x540D;&#x79F0;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x51FD;&#x6570;&#x540D;</td>
      <td style="text-align:left">&lt;b&gt;&lt;/b&gt;<a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/RegExp/exec"><b>exec</b></a>&lt;b&gt;&lt;/b&gt;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F5C;&#x7528;</td>
      <td style="text-align:left">
        <p>&#x5728;&#x4E00;&#x4E2A;&#x6307;&#x5B9A;&#x5B57;&#x7B26;&#x4E32;&#x4E2D;&#x6267;&#x884C;&#x4E00;&#x4E2A;&#x641C;&#x7D22;&#x5339;&#x914D;</p>
        <p>&#x5F53;&#x6307;&#x5B9A;&#x6B63;&#x5219;&#x6807;&#x5FD7;g&#x65F6;&#xFF0C;&#x4F1A;&#x5728;
          RegExpObject &#x7684; lastIndex &#x5C5E;&#x6027;</p>
        <p>&#x6307;&#x5B9A;&#x7684;&#x5B57;&#x7B26;&#x5904;&#x5F00;&#x59CB;&#x68C0;&#x7D22;&#x5B57;&#x7B26;&#x4E32;&#xFF0C;&#x6BCF;&#x6B21;&#x5339;&#x914D;&#x7ED3;&#x675F;&#xFF0C;&#x91CD;&#x7F6E;lastIndex&#x7684;&#x4F4D;&#x7F6E;</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BED;&#x6CD5;</td>
      <td style="text-align:left"><code>regExpObject.exec(str)</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x53C2;&#x6570;</td>
      <td style="text-align:left">&#x5F85;&#x5339;&#x914D;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x7684;&#x5B57;&#x7B26;&#x4E32;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x503C;</td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x6210;&#x529F;&#xFF1A;&#x8FD4;&#x56DE;&#x4E00;&#x4E2A;&#x6570;&#x7EC4;</p>
        <ul>
          <li>&#x6570;&#x7EC4;[0]&#xFF1A;<b>&#x5339;&#x914D;&#x7684;&#x5168;&#x90E8;&#x5B57;&#x7B26;&#x4E32;</b>
          </li>
          <li>&#x6570;&#x7EC4;[1],...[n]&#xFF1A;<b>&#x6B63;&#x5219;&#x62EC;&#x53F7;&#x4E2D;&#x7684;&#x5206;&#x7EC4;&#x6355;&#x83B7;</b>
          </li>
          <li>index&#xFF1A;&#x5339;&#x914D;&#x5230;&#x7684;&#x5B57;&#x7B26;&#x4F4D;&#x4E8E;&#x539F;&#x59CB;&#x5B57;&#x7B26;&#x4E32;&#x7684;&#x57FA;&#x4E8E;0&#x7684;&#x7D22;&#x5F15;&#x503C;</li>
          <li>input&#xFF1A;&#x539F;&#x59CB;&#x5B57;&#x7B26;&#x4E32;</li>
        </ul>
        <p>&#x5339;&#x914D;&#x5931;&#x8D25;&#xFF1A;&#x8FD4;&#x56DE;null</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x793A;&#x5217;</td>
      <td style="text-align:left">
        <p><code>/(?:\?|&amp;)name=(*)/.exec(&apos;</code><a href="http://www.qq.com?name=qq"><code>http://www.qq.com?name=qq</code></a><code>&apos;);</code>
        </p>
        <p><code>// [&apos;?name=qq&apos;, &apos;qq&apos;, ...]</code>
        </p>
      </td>
    </tr>
  </tbody>
</table>

### String方法

* **match**

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x540D;&#x79F0;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x51FD;&#x6570;&#x540D;</td>
      <td style="text-align:left"><a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String/match">match</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F5C;&#x7528;</td>
      <td style="text-align:left">&#x68C0;&#x7D22;&#x8FD4;&#x56DE;&#x4E00;&#x4E2A;&#x5B57;&#x7B26;&#x4E32;&#x5339;&#x914D;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x7684;&#x7684;&#x7ED3;&#x679C;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BED;&#x6CD5;</td>
      <td style="text-align:left"><code>str.match(regexp)</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x53C2;&#x6570;</td>
      <td style="text-align:left">&#x4E00;&#x4E2A;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x503C;</td>
      <td style="text-align:left">
        <p>&#x4F7F;&#x7528;g&#x6807;&#x5FD7;&#xFF1A;</p>
        <ul>
          <li>&#x8FD4;&#x56DE;&#x4E0E;&#x5B8C;&#x6574;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x5339;&#x914D;&#x7684;&#x6240;&#x6709;&#x7ED3;&#x679C;&#xFF08;<code>Array</code>&#xFF09;</li>
          <li>&#x4E0D;&#x4F1A;&#x8FD4;&#x56DE;&#x6355;&#x83B7;&#x7EC4;</li>
          <li>&#x672A;&#x5339;&#x914D; &#x8FD4;&#x56DE;<code>null</code>
          </li>
        </ul>
        <p>&#x4E0D;&#x4F7F;&#x7528;g&#x6807;&#x5FD7;&#xFF1A;</p>
        <ul>
          <li>&#x4EC5;&#x8FD4;&#x56DE;&#x7B2C;&#x4E00;&#x4E2A;&#x5B8C;&#x6574;&#x5339;&#x914D;&#x53CA;&#x5176;&#x76F8;&#x5173;&#x7684;&#x6355;&#x83B7;&#x7EC4;&#xFF08;<code>Array</code>&#xFF09;</li>
          <li>&#x672A;&#x5339;&#x914D;&#x8FD4;&#x56DE;<code>null</code>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x793A;&#x5217;</td>
      <td style="text-align:left">
        <p><code>&apos;</code><a href="http://www.qq.com?name=qq&apos;.match(/(?:\?|&amp;)name=([^&amp;]*)/"><code>http://www.qq.com?name=qq&apos;.match(/(?:\?|&amp;)name=([^&amp;]*)/</code></a><code>); </code>
        </p>
        <p><code>// [&apos;?name=qq&apos;, &apos;qq&apos;, ...]</code>
        </p>
      </td>
    </tr>
  </tbody>
</table>

* **replace**

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x540D;&#x79F0;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x51FD;&#x6570;&#x540D;</td>
      <td style="text-align:left"><b>&lt;code&gt;&lt;/code&gt;</b><a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String/replace"><b>replace</b></a>&lt;b&gt;&lt;/b&gt;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F5C;&#x7528;</td>
      <td style="text-align:left">
        <p>&#x8FD4;&#x56DE;&#x4E00;&#x4E2A;</p>
        <p>&#x7531;&#x66FF;&#x6362;&#x503C;&#xFF08;<code>replacement</code>&#xFF09;&#x66FF;&#x6362;&#x4E00;&#x4E9B;
          <br
          />&#x6216;&#x6240;&#x6709;&#x5339;&#x914D;&#x7684;&#x6A21;&#x5F0F;&#xFF08;<code>pattern</code>&#xFF09;&#x540E;&#x7684;&#x65B0;&#x5B57;&#x7B26;&#x4E32;</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BED;&#x6CD5;</td>
      <td style="text-align:left"><code>str.replace(regexp|substr, newSubStr|function)</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x53C2;&#x6570;</td>
      <td style="text-align:left">
        <p><b>regexp</b>
        </p>
        <ul>
          <li>&#x4E00;&#x4E2A;<a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/RegExp"><code>RegExp</code></a> &#x5BF9;&#x8C61;&#x6216;&#x8005;&#x5176;&#x5B57;&#x9762;&#x91CF;</li>
        </ul>
        <p><b>substr</b>
        </p>
        <ul>
          <li>&#x4E00;&#x4E2A;&#x5C06;&#x88AB; <code>newSubStr</code> &#x66FF;&#x6362;&#x7684;
            <a
            href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/String"><code>&#x5B57;&#x7B26;&#x4E32;</code>
              </a>
          </li>
        </ul>
        <p><b>newSubStr</b>
        </p>
        <ul>
          <li>&#x7528;&#x4E8E;&#x66FF;&#x6362;&#x6389;&#x7B2C;&#x4E00;&#x4E2A;&#x53C2;&#x6570;&#x5728;&#x539F;&#x5B57;&#x7B26;&#x4E32;&#x4E2D;&#x7684;&#x5339;&#x914D;&#x90E8;&#x5206;&#x7684;
            <a
            href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/String"><code>&#x5B57;&#x7B26;&#x4E32;</code>
              </a>
          </li>
        </ul>
        <p><b>function</b>
        </p>
        <ul>
          <li>&#x4E00;&#x4E2A;&#x7528;&#x6765;&#x521B;&#x5EFA;&#x65B0;&#x5B50;&#x5B57;&#x7B26;&#x4E32;&#x7684;&#x51FD;&#x6570;</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x503C;</td>
      <td style="text-align:left">&#x4E00;&#x4E2A;&#x90E8;&#x5206;&#x6216;&#x5168;&#x90E8;&#x5339;&#x914D;&#x7531;&#x66FF;&#x4EE3;&#x6A21;&#x5F0F;&#x6240;&#x53D6;&#x4EE3;&#x7684;&#x65B0;&#x7684;&#x5B57;&#x7B26;&#x4E32;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x793A;&#x5217;</td>
      <td style="text-align:left"><code>&apos;&#x4E00; &#x8D77; &#x5B66; RegExp&apos;.replace(/\s/g, &apos;&apos;); // &quot;&#x4E00;&#x8D77;&#x5B66;RegExp&quot;</code>
      </td>
    </tr>
  </tbody>
</table>

* **search**

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x540D;&#x79F0;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x51FD;&#x6570;&#x540D;</td>
      <td style="text-align:left">&lt;code&gt;&lt;/code&gt;<a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String/search"><code>search</code></a>&lt;code&gt;&lt;/code&gt;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F5C;&#x7528;</td>
      <td style="text-align:left">&#x6267;&#x884C;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x548C; <a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/String"><code>String</code></a> &#x5BF9;&#x8C61;&#x4E4B;&#x95F4;&#x7684;&#x4E00;&#x4E2A;&#x641C;&#x7D22;&#x5339;&#x914D;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BED;&#x6CD5;</td>
      <td style="text-align:left"><code>str.search(regexp)</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x53C2;&#x6570;</td>
      <td style="text-align:left">&#x4E00;&#x4E2A;<a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/RegExp"><code>&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#xFF08;regular expression&#xFF09;</code></a>&#x5BF9;&#x8C61;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x503C;</td>
      <td style="text-align:left">
        <p>&#x5339;&#x914D;&#x6210;&#x529F;</p>
        <ul>
          <li>&#x8FD4;&#x56DE;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;&#x5728;&#x5B57;&#x7B26;&#x4E32;&#x4E2D;&#x9996;&#x6B21;&#x5339;&#x914D;&#x9879;&#x7684;&#x7D22;&#x5F15;;</li>
        </ul>
        <p>&#x5339;&#x914D;&#x5931;&#x8D25;</p>
        <ul>
          <li>&#x8FD4;&#x56DE; <b>-1</b>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x793A;&#x5217;</td>
      <td style="text-align:left"><code>&apos;&#x4E00; &#x8D77; &#x5B66; RegExp&apos;.search(/[\a-zA-Z]+/);  // 6</code>
      </td>
    </tr>
  </tbody>
</table>

* **split**

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x540D;&#x79F0;</th>
      <th style="text-align:left">&#x63CF;&#x8FF0;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">&#x540D;&#x79F0;</td>
      <td style="text-align:left"><a href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/String/split">split</a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F5C;&#x7528;</td>
      <td style="text-align:left">&#x4F7F;&#x7528;&#x6307;&#x5B9A;&#x7684;&#x5206;&#x9694;&#x7B26;&#x5B57;&#x7B26;&#x4E32;&#x5C06;&#x4E00;&#x4E2A;
        <a
        href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/String"><code>String</code>
          </a>&#x5BF9;&#x8C61;&#x5206;&#x5272;&#x6210;&#x5B57;&#x7B26;&#x4E32;&#x6570;&#x7EC4;</td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8BED;&#x6CD5;</td>
      <td style="text-align:left"><code>str.split([separator[, limit]])</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x53C2;&#x6570;</td>
      <td style="text-align:left">
        <p><b><code>separator</code></b>
        </p>
        <ul>
          <li>&#x6307;&#x5B9A;&#x8868;&#x793A;&#x6BCF;&#x4E2A;&#x62C6;&#x5206;&#x5E94;&#x53D1;&#x751F;&#x7684;&#x70B9;&#x7684;&#x5B57;&#x7B26;&#x4E32;&#xFF0C;&#x5B57;&#x7B26;&#x4E32;&#x6216;&#x6B63;&#x5219;&#x8868;&#x8FBE;&#x5F0F;</li>
        </ul>
        <p><b><code>limit</code></b>
        </p>
        <ul>
          <li>&#x4E00;&#x4E2A;&#x6574;&#x6570;&#xFF0C;&#x9650;&#x5B9A;&#x8FD4;&#x56DE;&#x7684;&#x5206;&#x5272;&#x7247;&#x6BB5;&#x6570;&#x91CF;</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x503C;</td>
      <td style="text-align:left">&#x8FD4;&#x56DE;&#x6E90;&#x5B57;&#x7B26;&#x4E32;&#x4EE5;&#x5206;&#x9694;&#x7B26;&#x51FA;&#x73B0;&#x4F4D;&#x7F6E;&#x5206;&#x9694;&#x800C;&#x6210;&#x7684;&#x4E00;&#x4E2A;
        <a
        href="https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Array"><code>Array</code>
          </a>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x793A;&#x5217;</td>
      <td style="text-align:left"><code>&apos;&#x4E00; &#x8D77; &#x5B66; RegExp&apos;.split(/[\s]+/);<br />// [&quot;&#x4E00;&quot;, &quot;&#x8D77;&quot;, &quot;&#x5B66;&quot;, &quot;RegExp&quot;]</code>
      </td>
    </tr>
  </tbody>
</table>





