<<task1
Создаёт список всех файлов в текущей директории,
указывая их тип (файл, каталог и т.д.).
task1

echo "Список всех файлов в текущей папке: "
for item in *; do
	if [ -d "$item" ]; then
		echo "$item - каталог"
	elif [ -f "$item" ]; then
		if [[ "$item" == *.txt ]]; then
			echo "$item - текстовый файл"
		elif [[ "$item" == *.* ]]; then
			echo "$item - обычный файл"
		else
			echo "$item - файл без расширения"
		fi
	else
		echo "$item - другой тип"
	fi
done

echo ''

<<task2
Проверяет наличие определённого файла, 
переданного как аргумент скрипта,
и выводит сообщение о его наличии или отсутствии.
task2

if [ -z "$1" ]; then
	echo "Файл не указан."
else
	if [ -e "$1" ]; then
		echo "Файл "$1" найден в текущей папке."
	else
		echo "Файл "$1" не найден."
	fi
fi

echo ''

<<task3
Использует цикл for для вывода информации
о каждом файле: его имя и права доступа.
task3

for file in *; do
	if [ -e "$file" ]; then
		perms=$(ls -ld "$file" | awk '{print $1}')
		echo "$file - права: $perms"
	fi
done
