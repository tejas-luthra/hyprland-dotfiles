input=($1)
maxlength=$2

new=""

for word in "${input[@]}"; do
	temp=$new$word
	if [ ${#temp} -lt $maxlength ]; then
		new=$new" "$word
	elif [[ $new != "" ]]; then
		new+="..."
		break
	else
		break
	fi
done

echo $new
