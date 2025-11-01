<<task
Скрипт должен создавать архив (tar.gz) для указанной директории.
Имя архива должно включать текущую дату.
task

read -p "Путь папки: " dirpath

if [ ! -d "$dirpath" ]; then
	echo "Папка не найдена."
	exit 1
fi

dirname=$(basename "$dirpath")
out_dir=$(pwd)
date_str=$(date +%Y-%m-%d)
archive_name="${dirname}_${date_str}.tar.gz"
archive_path="${out_dir}/${archive_name}"

tar -czf "$archive_path" -C "$(dirname "$dirpath")" "$dirname"

echo "Архив создан: $archive_name"
