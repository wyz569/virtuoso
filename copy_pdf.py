import os
import re
import shutil

def process_documents(input_file="file_titles.txt", pdf_output_dir="doc/pdf/"):
    """
    读取document_titles.txt，查找对应的HTML文件路径下是否有PDF文档。
    如果有，将其复制到指定目录，并根据文档标题进行重命名（如果只有一个PDF）。

    Args:
        input_file (str): 包含HTML文件路径和文档标题的文本文件。
        pdf_output_dir (str): PDF文件复制的目标目录。
    """
    # 检查输入文件是否存在
    if not os.path.exists(input_file):
        print(f"错误：输入文件 '{input_file}' 不存在。")
        return

    # 创建PDF目标目录（如果不存在）
    os.makedirs(pdf_output_dir, exist_ok=True)
    print(f"PDF 文件将复制到: {pdf_output_dir}")

    print("正在处理文档和查找PDF...")

    with open(input_file, 'r', encoding='utf-8') as infile:
        for line in infile:
            line = line.strip()
            if not line:
                continue

            parts = line.split(' ', 1) # 分割一次，获取路径和标题
            if len(parts) < 2:
                print(f"警告：跳过格式不正确的行: {line}")
                continue

            html_file_path = parts[0]
            doc_title = parts[1]

            # 获取HTML文件所在的目录
            html_dir = os.path.dirname(html_file_path)

            # 查找该目录下所有的PDF文件
            found_pdfs = []
            if os.path.exists(html_dir) and os.path.isdir(html_dir):
                for item in os.listdir(html_dir):
                    if item.lower().endswith('.pdf'):
                        full_pdf_path = os.path.join(html_dir, item)
                        if os.path.isfile(full_pdf_path):
                            found_pdfs.append(full_pdf_path)

            if found_pdfs:
                print(f"在 '{html_dir}' 找到 {len(found_pdfs)} 个 PDF 文件。")

                if len(found_pdfs) == 1:
                    # 只有一个PDF，进行重命名并复制
                    original_pdf_path = found_pdfs[0]
                    # 清理标题，使其适合作为文件名
                    # 移除特殊字符，替换空格为下划线，避免路径问题
                    clean_title = re.sub(r'[^\w\s-]', '', doc_title).strip()
                    clean_title = re.sub(r'\s+', '_', clean_title)
                    
                    # 确保标题不为空，避免生成空文件名
                    if not clean_title:
                        clean_title = os.path.basename(original_pdf_path).replace('.pdf', '_') + "no_title"

                    new_pdf_name = f"{clean_title}.pdf"
                    destination_path = os.path.join(pdf_output_dir, new_pdf_name)

                    try:
                        shutil.copy2(original_pdf_path, destination_path)
                        print(f"  已复制并重命名 '{original_pdf_path}' 为 '{destination_path}'")
                    except Exception as e:
                        print(f"  错误：复制或重命名 '{original_pdf_path}' 失败: {e}")
                elif len(found_pdfs) >= 2: # 根据您的需求，这里是“超过2个”，我理解为 >= 2
                    # 超过2个PDF（即2个或更多），只复制不重命名
                    print(f"  '{html_dir}' 包含多个PDF文件，将只复制不重命名。")
                    for original_pdf_path in found_pdfs:
                        pdf_base_name = os.path.basename(original_pdf_path)
                        destination_path = os.path.join(pdf_output_dir, pdf_base_name)
                        try:
                            shutil.copy2(original_pdf_path, destination_path)
                            print(f"  已复制 '{original_pdf_path}' 到 '{destination_path}'")
                        except Exception as e:
                            print(f"  错误：复制 '{original_pdf_path}' 失败: {e}")
            else:
                print(f"在 '{html_dir}' 未找到 PDF 文件。")

    print("所有PDF文件处理完成。")

if __name__ == "__main__":
    process_documents()