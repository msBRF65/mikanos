source /home/makoto/osbook/devenv/buildenv.sh
rm -f build.log
touch build.log
clang++ $CPPFLAGS -O2 --target=x86_64-elf -ffreestanding \
-fno-exceptions -c main.cpp \
> build.log 2>&1
ld.lld $LDFLAGS --entry KernelMain -z norelro --image-base \
0x100000 --static -o kernel.elf main.o > build.log 2>&1