obj-m += homework2.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	$(CC) testhomework2.c -o test
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm test
