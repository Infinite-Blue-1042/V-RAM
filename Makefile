test-tlb: test-tlb.c
	gcc -g -Wall -O test-tlb.c -o test-tlb -lm
run: test-tlb
	for i in 4k 8k 16k 32k 64k 128k 256k 512k 1M 2M 4M 6M 8M 16M 32M 64M 128M 256M ; do echo "$$i:"; ./test-tlb -H $$i 64; ./test-tlb $$i 64 ; ./test-tlb -Hr $$i 64; ./test-tlb -r $$i 64; done
odd-case: test-tlb
	./test-tlb 128M 61943452
