# 正则引擎

正则引擎主要分为：

* 非确定有限状态自动机（NFA）
* 确定有限状态自动机（DFA）

DFA和NFA都发展了都多年，产生了许多不必要的变体。POSIX标准（UNIX系统的一个设计标准）出台后，POSIX标准清楚地规定了引擎中应该支持的元字符和特性，DFA已经符合新的标准，但是NFA风格的结果却与此不一，所以NFA需要修改才能符合标准。这样一来，正则引擎可以粗略地分为三类：DFA；传统型NFA；POSIX NFA，具体见下表：

<table>
  <thead>
    <tr>
      <th style="text-align:left">&#x5F15;&#x64CE;&#x7C7B;&#x578B;</th>
      <th style="text-align:left">&#x7A0B;&#x5E8F;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">DFA</td>
      <td style="text-align:left">
        <p>awk&#xFF08;&#x5927;&#x591A;&#x6570;&#x7248;&#x672C;&#xFF09;</p>
        <p>egrep&#xFF08;&#x5927;&#x591A;&#x6570;&#x7248;&#x672C;&#xFF09;</p>
        <p>flex&#x3001;lex&#x3001;MySql&#x3001;Procmail</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">&#x4F20;&#x7EDF;&#x578B;NFA</td>
      <td style="text-align:left">
        <p>Java&#x3001;Js&#x3001;Php&#x3001;Go&#x3001;Python&#x3001;Ruby</p>
        <p>Perl&#x3001;less&#x3001;sed&#x3001;vi&#x3001;grep</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">POSIX NAF</td>
      <td style="text-align:left">
        <p>mawk</p>
        <p>Mortice Kern Systems&#x2019; utilities</p>
        <p>GNU Emacs(&#x4F7F;&#x7528;&#x65F6;&#x53EF;&#x4EE5;&#x660E;&#x786E;&#x6307;&#x5B9A;)</p>
      </td>
    </tr>
  </tbody>
</table>

可见传统NFA使用最为广泛，大多数编程语言都内置NFA引擎实现正则功能

