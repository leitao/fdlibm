CFLAGS=-I. -g -static

%.o:	%.c
	gcc $(CFLAGS) -c $< -o $@
	gcc $(CFLAGS) -O3 -c $< -o $@3

s_cos:  s_cos.o k_cos.o k_sin.o e_rem_pio2.o k_rem_pio2.o s_floor.o s_fabs.o call_s_cos.o s_ldexp.o s_scalbn.o
	gcc $(CFLAGS) s_cos.o k_cos.o k_sin.o e_rem_pio2.o k_rem_pio2.o s_floor.o s_fabs.o s_ldexp.o s_scalbn.o call_s_cos.o -o call_s_cos
	gcc $(CFLAGS) -O3 s_cos.o3 k_cos.o3 k_sin.o3 e_rem_pio2.o3 k_rem_pio2.o3 s_floor.o3 s_fabs.o3 s_ldexp.o3 s_scalbn.o3 call_s_cos.o3 -o call_s_cos_3

clean:
	rm -fr perf.*
	rm -fr *.o
	rm -fr call_s_cos
	rm -fr main libfoo.so
