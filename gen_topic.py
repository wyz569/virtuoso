import os
import re

def find_html_files_and_extract_titles_final(root_dir='.'):
    """
    遍历指定目录，通过一个更严格的正则表达式查找*TOC.html文件，
    并精确地从 <META NAME="DocTitle" ...> 中提取标题。
    """
    results = []

    # 最终修正的正则表达式：
    # 1. 使用 [^>]*? 确保搜索范围不会超出单个 <meta> 标签。
    # 2. 明确要求 name="DocTitle" 必须存在。
    # 3. 使用反向引用 \1 来正确处理引号。
    pattern = re.compile(
        r'<meta[^>]*?name\s*=\s*["\']DocTitle["\'][^>]*?content\s*=\s*(["\'])(.*?)\1[^>]*?>',
        re.IGNORECASE | re.DOTALL
    )

    print(f"开始在 '{os.path.abspath(root_dir)}' 目录中搜索...")

    for dirpath, _, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.endswith('TOC.html'):
                file_path = os.path.join(dirpath, filename)
                
                try:
                    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
                        content = f.read()
                    
                    match = pattern.search(content)
                    
                    doc_title = "未找到标题" # 如果没找到，则使用这个默认值
                    if match:
                        # 标题内容在第 2 个捕获组 (group 2)
                        doc_title = match.group(2).strip()
                    
                    relative_path = os.path.relpath(file_path, root_dir)
                    results.append((relative_path, doc_title))
                    # 只在找到有效标题时或找不到时打印，避免混淆
                    if match:
                        print(f"  [成功] 找到文件: {relative_path} -> 标题: {doc_title}")
                    else:
                        print(f"  [警告] 在 {relative_path} 中未找到 DocTitle 标签。")


                except Exception as e:
                    print(f"  [错误] 处理文件 {file_path} 时发生错误: {e}")

    # 生成 txt 文档
    output_filename = 'file_titles.txt'
    try:
        with open(output_filename, 'w', encoding='utf-8') as f:
            for path, title in results:
                f.write(f"{path}  {title}\n")
        
        print(f"\n处理完成！结果已保存到 '{os.path.abspath(output_filename)}'")
        print(f"共处理 {len(results)} 个匹配的文件。")

    except Exception as e:
        print(f"\n[错误] 写入结果文件时发生错误: {e}")

# --- 主程序入口 ---
if __name__ == "__main__":
    find_html_files_and_extract_titles_final()