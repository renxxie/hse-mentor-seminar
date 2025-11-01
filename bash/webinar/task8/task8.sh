<<task
Напишите скрипт, который проверяет использование диска и выводит
предупреждение, если использование превышает 80%.
task

value=80

df -h --output=pcent,target | tail -n +2 | while read -r usage mountpoint; do
	usage_percent=${usage%\%}

	if [ "$usage_percent" -gt "$value" ]; then
		echo "Диск с разделом: "$mountpoint" достиг ${usage_percent}%!"
	else
		echo "Раздел: "$mountpoint" в норме (${usage_percent}%)."
	fi
done
