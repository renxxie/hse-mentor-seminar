<<task
Создайте скрипт с функцией, которая принимает в качестве аргумента строку
и выводит её с префиксом "Hello, ".
Напишите ещё одну функцию, которая принимает два числа и возвращает их сумму.
Вызовите обе функции в скрипте и продемонстрируйте результат.
task

say_hello() {
	local name="$1"
	echo "Hello, $name"
}

add_numbers() {
	local a=$1
	local b=$2
	local sum=$((a + b))
	echo "$sum"
}

read -p "Имя: " name
say_hello "$name"

read -p "Первое число: " num1
read -p "Второе число: " num2
result=$(add_numbers "$num1" "$num2")
echo "Сумма $num1 и $num2 равна $result."
