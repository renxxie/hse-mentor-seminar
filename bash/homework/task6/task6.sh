<<task1
Создайте скрипт, который выполняет следующие действия: 
1. Читает данные из файла input.txt.
task1

echo "Содержимое файла input.txt:"
cat input.txt
echo ''

<<task2
2. Перенаправляет вывод команды wc -l (подсчет строк) в файл output.txt.
task2

wc -l < input.txt > output.txt
echo "Количество строк записано в output.txt"

<<task3
3. Перенаправляет ошибки выполнения команды ls для несуществующего файла в файл error.log.
task3

ls new_file 2> error.log
echo "Ошибки записаны в error.log"
