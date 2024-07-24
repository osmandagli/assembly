file_name=${1%%.*}

nasm -f elf64 $1 -o $file_name.o

ld $file_name.o -o $file_name

./$file_name

rm -f $file_name $file_name.o
