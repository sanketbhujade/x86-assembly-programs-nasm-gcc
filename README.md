# x86-assembly-programs-nasm-gcc
Programs learned in course Low Level Assembly programming Using Nasm and gcc at PUCSD 
INSTRUCTOR - PROF.NITIN PRAKASH PATIL

# Software Needed
NASM (Netwide Assembler) https://www.nasm.us/ 
GCC (c compiler)
# How to run

```bash
$ nasm -felf32 filename.asm
$ gcc -m32 filename.o
$ ./a.out
```

```bash
# for adding debugging information
$ nasm -felf32 filename.asm -g Fdwarf
```
