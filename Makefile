CFLAGS=-I. -g -static $(ARG) -fno-expensive-optimizations

%.o:	%.c
	gcc $(CFLAGS) -O0 -c $< -o $@
	gcc $(CFLAGS) -O1 -c $< -o $@1
	gcc $(CFLAGS) -O2 -c $< -o $@2
	gcc $(CFLAGS) -O3 -c $< -o $@3

s_cos:  s_cos.o k_cos.o k_sin.o e_rem_pio2.o k_rem_pio2.o s_floor.o s_fabs.o call_s_cos.o s_ldexp.o s_scalbn.o
	gcc $(CFLAGS) -O0 s_cos.o k_cos.o k_sin.o e_rem_pio2.o k_rem_pio2.o s_floor.o s_fabs.o s_ldexp.o s_scalbn.o call_s_cos.o -o call_s_cos_0
	gcc $(CFLAGS) -O1 s_cos.o1 k_cos.o1 k_sin.o1 e_rem_pio2.o1 k_rem_pio2.o1 s_floor.o1 s_fabs.o1 s_ldexp.o1 s_scalbn.o1 call_s_cos.o1 -o call_s_cos_1
	gcc $(CFLAGS) -O2 s_cos.o2 k_cos.o2 k_sin.o2 e_rem_pio2.o2 k_rem_pio2.o2 s_floor.o2 s_fabs.o2 s_ldexp.o2 s_scalbn.o2 call_s_cos.o2 -o call_s_cos_2
	gcc $(CFLAGS) -O3 s_cos.o3 k_cos.o3 k_sin.o3 e_rem_pio2.o3 k_rem_pio2.o3 s_floor.o3 s_fabs.o3 s_ldexp.o3 s_scalbn.o3 call_s_cos.o3 -o call_s_cos_3


clean:
	rm -fr perf.*
	rm -fr *.o
	rm -fr call_s_cos
	rm -fr main libfoo.so

