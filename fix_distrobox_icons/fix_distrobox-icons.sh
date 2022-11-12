src=$HOME/.local/share/applications/ # Change to the src dir
dst=$src
sep='-' # Change according to the container name

echo -e "Destiny DIR is $src\n"
echo -e "Target DIR is $dst\n"
echo -e "Can Continue [y/n]?"
read acceptance
if [[ $acceptance = y ]]; then
	for file in $src/*; do
	      if [[ $file =~ $sep. ]]; then
		      app_name=${file#*$sep} #Remove from beggining of string until the separator, bash parameter expansion feature
		      echo -e "$file -> $app_name\n"
		      mv $file $dst/$app_name
	       fi
	done
	echo "DONE"
fi
