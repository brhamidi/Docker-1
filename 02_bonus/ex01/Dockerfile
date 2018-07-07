FROM ubuntu

RUN apt-get update && apt-get install -y gcc nasm

COPY main.asm .

RUN nasm -f elf64 main.asm && ld main.o

ENTRYPOINT ["./a.out"]
