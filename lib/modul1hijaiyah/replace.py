import os

# Blok yang ingin diganti
target_block = """.play(AssetSource('audios/"""

# Blok pengganti
replacement_block = """.play(AssetSource('audios/modul1/"""

# Ganti path_folder dengan lokasi folder kamu
folder_path = "."  # <-- GANTI INI SESUAI LOKASI FILE

# Loop semua file di folder
for root, dirs, files in os.walk(folder_path):
    for filename in files:
        if filename.endswith(".dart"):
            file_path = os.path.join(root, filename)

            with open(file_path, 'r', encoding='utf-8') as file:
                content = file.read()

            if target_block in content:
                print(f"Memodifikasi: {file_path}")
                content = content.replace(target_block, replacement_block)

                with open(file_path, 'w', encoding='utf-8') as file:
                    file.write(content)
