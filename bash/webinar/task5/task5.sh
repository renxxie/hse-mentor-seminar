<<task
Напишите скрипт, который добавляет префикс backup_
ко всем файлам в указанной директории.
task

read -p "Имя папки: " dirpath

if [ ! -d "$dirpath" ]; then
	echo "Папка не найдена."
	exit 1
fi

cd "$dirpath" || exit 1

for file in *; do
	if [ -f "$file" ]; then
		mv "$file" "backup_$file"
	fi
done

echo "Префикс добавлен ко всем файлам в папке: $dirpath"
