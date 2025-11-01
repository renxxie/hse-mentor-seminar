<<task
Создайте скрипт с функцией add, которая принимает два аргумента
и выводит их сумму.
task

add() {
	local a=$1
	local b=$2
	local sum=$((a + b))
	echo "Сумма: $sum"
}

read -p "Первое число: " num1
read -p "Второе число: " num2

add "$num1" "$num2"
