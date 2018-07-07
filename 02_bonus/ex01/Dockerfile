FROM ubuntu

RUN apt-get update && apt-get install -y gcc nasm

ARG filename

COPY $filename .

RUN nasm -f elf64 $filename -o file.o && ld file.o

ENTRYPOINT ["./a.out"]
