CFLAGS=-I. -g -static -O1
FLAG=-fexpensive-optimizations 
GCC=gcc

%.o:	%.c
	$(GCC) $(CFLAGS) -c $< -o $@
	$(GCC) $(CFLAGS) $(FLAG)-c $< -o opt_$@

s_cos:  s_cos.o k_cos.o k_sin.o e_rem_pio2.o k_rem_pio2.o s_floor.o s_fabs.o call_s_cos.o s_ldexp.o s_scalbn.o
	$(GCC) $(CFLAGS) s_cos.o k_cos.o k_sin.o e_rem_pio2.o k_rem_pio2.o s_floor.o s_fabs.o s_ldexp.o s_scalbn.o call_s_cos.o -o call
	$(GCC) $(CFLAGS) $(FLAG) opt_s_cos.o opt_k_cos.o opt_k_sin.o opt_e_rem_pio2.o opt_k_rem_pio2.o opt_s_floor.o opt_s_fabs.o opt_s_ldexp.o opt_s_scalbn.o opt_call_s_cos.o -o opt_call

clean:
	rm -fr *.o
	rm -fr call opt_call

