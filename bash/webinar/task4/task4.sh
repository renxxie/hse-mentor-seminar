<<task
Напишите скрипт, который принимает на вход имя файла
и выводит количество строк в нём.
task

read -p "Имя файла: " filename

if [ ! -f "$filename" ]; then
	echo "Файл не найден."
	exit 1
fi

lines=$(wc -l < "$filename")

echo "Файл "$filename" содержит $lines строк."
