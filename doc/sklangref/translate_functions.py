import re

file_path = r'D:\ProgramData\html\virtuoso_23.1\doc\sklangref\appA_ct_Functions.html'

translation_map = {
    "Functions": "函数",
    "The following table describes the Scheme/SKILL++ equivalent functions.": "下表描述了 Scheme/SKILL++ 等效的函数。",
    "Scheme/SKILL++ Equivalents Tables": "Scheme/SKILL++ 等效表",
    "Lexical Structure": "词法结构",
    "Expressions": "表达式",
    "Related Topics": "相关主题",
    "Same.": "相同。",
    "Unsupported.": "不支持。",
    "Supported.": "支持。",
    "Infix only.": "仅中缀。",
    "Equivalent to functions <code>plus</code><em>, </em><code>difference</code><em>, </em><code>times</code><em>,</em> and <code>quotient</code> in SKILL++.": "相当于 SKILL++ 中的 <code>plus</code><em>、</em><code>difference</code><em>、</em><code>times</code><em></em> 和 <code>quotient</code> 函数。",
    "Equivalent to functions <code>lessp</code><em>, </em><code>leqp</code><em>, </em><code>greaterp</code>, and <code>geqp</code> in SKILL++.": "相当于 SKILL++ 中的 <code>lessp</code><em>、</em><code>leqp</code><em>、</em><code>greaterp</code> 和 <code>geqp</code> 函数。",
    "Used as the infix assignment operator in SKILL++. For equality, use the infix operator <code>==</code> or function <code>equal</code>.": "在 SKILL++ 中用作中缀赋值运算符。对于相等性，请使用中缀运算符 <code>==</code> 或函数 <code>equal</code>。",
    "Takes two arguments only.": "仅接受两个参数。",
    "In SKILL++, <code>atan</code> takes one argument only; <code>atan2</code> takes two arguments.": "在 SKILL++ 中，<code>atan</code> 仅接受一个参数；<code>atan2</code> 接受两个参数。",
    "Use <code>booleanp</code>.": "使用 <code>booleanp</code>。",
    "True character type is not supported in SKILL++. However, single-character symbols can be used to simulate it. The function <code>charToInt</code> has the same effect on symbols.": "SKILL++ 不支持真正的字符类型。但是，可以使用单字符符号来模拟它。函数 <code>charToInt</code> 对符号具有相同的效果。",
    "Character type not supported.": "不支持字符类型。",
    "Use <code>close</code>.": "使用 <code>close</code>。",
    "The second argument must be a list.": "第二个参数必须是列表。",
    "Use the <code>piport</code> global variable.": "使用 <code>piport</code> 全局变量。",
    "Use the <code>poport</code> global variable.": "使用 <code>poport</code> 全局变量。",
    "SKILL++ reader returns <code>nil</code> on EOF.": "SKILL++ 读取器在 EOF 时返回 <code>nil</code>。",
    "Use <code>eq</code>.": "使用 <code>eq</code>。",
    "Use <code>equal</code>.": "使用 <code>equal</code>。",
    "Use <code>eqv</code>.": "使用 <code>eqv</code>。",
    "Use <code>evenp</code>.": "使用 <code>evenp</code>。",
    "Use <code>fix</code> or <code>floor</code>.": "使用 <code>fix</code> 或 <code>floor</code>。",
    "Use <code>mapc</code>.": "使用 <code>mapc</code>。",
    "Character type not supported. Use <code>intToChar</code> for the same effect on symbols.": "不支持字符类型。使用 <code>intToChar</code> 对符号产生相同的效果。",
    "Use <code>fixp</code> or <code>integerp</code>.": "使用 <code>fixp</code> 或 <code>integerp</code>。",
    "Works for both lists and vectors.": "适用于列表和向量。",
    "Use <code>listToVector</code>.": "使用 <code>listToVector</code>。",
    "Use <code>nth</code>.": "使用 <code>nth</code>。",
    "Use <code>listp</code>.": "使用 <code>listp</code>。",
    "Use <code>Vector</code>.": "使用 <code>Vector</code>。",
    "Use <code>mapcar</code><a id=\"marker-1018691\"></a> instead. <code>map</code><a id=\"marker-1018692\"></a> in SKILL++ behaves differently from <code>map</code> in standard Scheme.": "使用 <code>mapcar</code><a id=\"marker-1018691\"></a> 代替。SKILL++ 中的 <code>map</code><a id=\"marker-1018692\"></a> 行为与标准 Scheme 中的 <code>map</code> 不同。",
    "<code>modulo</code> differs from <code>mod</code> in SKILL++, which is the same as <code>remainder</code>.": "<code>modulo</code> 与 SKILL++ 中的 <code>mod</code> 不同，后者与 <code>remainder</code> 相同。",
    "Use <code>minusp</code> or <code>negativep</code>.": "使用 <code>minusp</code> 或 <code>negativep</code>。",
    "New for SKILL++. Same as ! operator.": "SKILL++ 新增。与 ! 运算符相同。",
    "Use <code>null</code>.": "使用 <code>null</code>。",
    "Use <code>sprintf</code>.": "使用 <code>sprintf</code>。",
    "Use <code>numberp</code>.": "使用 <code>numberp</code>。",
    "Use <code>oddp</code>.": "使用 <code>oddp</code>。",
    "Use <code>infile</code>.": "使用 <code>infile</code>。",
    "Use <code>outfile</code>.": "使用 <code>outfile</code>。",
    "Use <code>outportp</code>.": "使用 <code>outportp</code>。",
    "Use <code>dtpr</code> or <code>pairp</code>.": "使用 <code>dtpr</code> 或 <code>pairp</code>。",
    "Use <code>plusp</code>.": "使用 <code>plusp</code>。",
    "Use <code>procedurep</code>.": "使用 <code>procedurep</code>。",
    "Or use <code>lineread</code>. Returns <code>nil</code> on EOF.": "或者使用 <code>lineread</code>。EOF 时返回 <code>nil</code>。",
    "Character type not supported. Use <code>getc</code> for similar effect.": "不支持字符类型。使用 <code>getc</code> 获得类似效果。",
    "Use <code>floatp</code> or <code>realp</code>.": "使用 <code>floatp</code> 或 <code>realp</code>。",
    "Use <code>mod</code> or <code>remainder</code>.": "使用 <code>mod</code> 或 <code>remainder</code>。",
    "Use <code>rplaca</code> or <code>setcar</code>.": "使用 <code>rplaca</code> 或 <code>setcar</code>。",
    "Use <code>rplacd</code> or <code>setcdr</code>.": "使用 <code>rplacd</code> 或 <code>setcdr</code>。",
    "Use <code>readstring</code>.": "使用 <code>readstring</code>。",
    "Use <code>concat</code> or <code>stringToSymbol</code>.": "使用 <code>concat</code> 或 <code>stringToSymbol</code>。",
    "Use <code>strcat</code><em>.</em>": "使用 <code>strcat</code><em>.</em>",
    "Use <code>strlen</code>.": "使用 <code>strlen</code>。",
    "Use <code>getchar</code> for similar effect.": "使用 <code>getchar</code> 获得类似效果。",
    "Strings in SKILL++ are immutable.": "SKILL++ 中的字符串是不可变的。",
    "Use <code>alphalessp</code> or <code>strcmp</code>.": "使用 <code>alphalessp</code> 或 <code>strcmp</code>。",
    "Use <code>stringp</code>.": "使用 <code>stringp</code>。",
    "Argument values differ. SKILL++ uses <code>index</code> and <code>length</code>. Scheme standard uses <code>start</code> and <code>end</code> (<code>index</code>).": "参数值不同。SKILL++ 使用 <code>index</code> 和 <code>length</code>。Scheme 标准使用 <code>start</code> 和 <code>end</code> (<code>index</code>)。",
    "Use <code>get_pname</code> or <code>symbolToString</code>.": "使用 <code>get_pname</code> 或 <code>symbolToString</code>。",
    "Use <code>symbolp</code>.": "使用 <code>symbolp</code>。",
    "Use <code>length</code>.": "使用 <code>length</code>。",
    "Use <code>vectorToList</code>.": "使用 <code>vectorToList</code>。",
    "Use <code>arrayref</code> or the <code>a[i]</code><em> </em>syntax.": "使用 <code>arrayref</code> 或 <code>a[i]</code><em> </em> 语法。",
    "Use <code>setarray</code> or the <code>a[i] = v</code> syntax.": "使用 <code>setarray</code> 或 <code>a[i] = v</code> 语法。",
    "Use <code>arrayp</code> or <code>vectorp</code>.": "使用 <code>arrayp</code> 或 <code>vectorp</code>。",
    "Use <code>zerop</code>.": "使用 <code>zerop</code>。",
    "Scheme": "Scheme",
    "SKILL++": "SKILL++",
    "Comment": "注释",
    "SKILL++ ": "SKILL++ "
}

with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

def replace_p(match):
    prefix = match.group(1) # <p> or <p><a ...></a>
    text = match.group(2) # content
    suffix = match.group(3) # </p>
    
    clean_text = text.strip()
    if clean_text in translation_map:
        trans = translation_map[clean_text]
        new_prefix = prefix.replace('<p>', '<p style="color: #999999;">')
        return f'{new_prefix}{text}{suffix}\n<p style="color: #2E7D32;">\n{trans}</p>'
    return match.group(0)

def replace_h2(match):
    prefix = match.group(1) # <h2>...
    text = match.group(2) # content
    suffix = match.group(3) # </h2>
    
    clean_text = text.strip()
    if clean_text in translation_map:
        trans = translation_map[clean_text]
        new_prefix = prefix.replace('<h2>', '<h2 style="color: #999999;">')
        return f'{new_prefix}{text}{suffix}\n<h2 style="color: #2E7D32;">{trans}</h2>'
    return match.group(0)

def replace_h4(match):
    prefix = match.group(1) # <h4><em>...
    text = match.group(2) # content
    suffix = match.group(3) # </em></h4>
    
    clean_text = text.strip()
    if clean_text in translation_map:
        trans = translation_map[clean_text]
        new_prefix = prefix.replace('<h4>', '<h4 style="color: #999999;">')
        return f'{new_prefix}{text}{suffix}\n<h4 style="color: #2E7D32;"><em>{trans}</em></h4>'
    return match.group(0)

def replace_th(match):
    # For table headers: <span class="tbl-head" id="...">\n<a id="..."></a>Scheme</span>
    prefix = match.group(1)
    text = match.group(2)
    suffix = match.group(3)
    clean_text = text.strip()
    if clean_text in translation_map:
        trans = translation_map[clean_text]
        # Just replace text for headers? Or append?
        # User requirement: "原文上、译文下" (Original above, translation below)
        # For TH, it's usually small. Let's do:
        # <span ...>Original</span><br/><span ... style="color: #2E7D32;">Translation</span>
        # But structure is complex. Let's try to append.
        return f'{prefix}{text}<br /><span style="color: #2E7D32;">{trans}</span>{suffix}'
    return match.group(0)

# Replace P tags
content = re.sub(r'(<p>(?:\s*<a id="[^"]+"></a>)?)(.*?)(</p>)', replace_p, content, flags=re.DOTALL)

# Replace H2 tags
content = re.sub(r'(<h2>(?:\s*<a id="[^"]+"></a>)+)(.*?)(</h2>)', replace_h2, content, flags=re.DOTALL)

# Replace H4 tags
content = re.sub(r'(<h4><em>(?:\s*<a id="[^"]+"></a>)?)(.*?)(</em></h4>)', replace_h4, content, flags=re.DOTALL)

# Replace Table Headers
# Structure: <th ...><span ...><a ...></a>Text</span></th>
# Regex: (<th .*?>\s*<span .*?>\s*<a .*?></a>)(.*?)(</span>\s*</th>)
content = re.sub(r'(<th [^>]*>\s*<span [^>]*>\s*<a [^>]*></a>)(.*?)(</span>\s*</th>)', replace_th, content, flags=re.DOTALL)

with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)

print("Done")
