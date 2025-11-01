<<task
Напишите скрипт, удаляющий все файлы в директории,
которые были изменены более 7 дней назад.
task

read -p "Путь папки: " dirpath

if [ ! -d "$dirpath" ]; then
	echo "Папка не найдена."
	exit 1
fi

find "$dirpath" -type f -mtime +7 -print -delete

echo "Файлы старше 7 дней были удалены из: $dirpath"
