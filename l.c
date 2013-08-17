#include <stdio.h>
extern void loop_add_imm8();
extern void loop_dec_to_zero();
extern void loop_inc();

int main(int argc, const char **argv) {
  if (argc == 1) {
    printf("loop_add_imm8\n");
    loop_add_imm8(1000000000);
  } else if (argc == 2) {
    printf("loop_dec_to_zero\n");
    loop_dec_to_zero(1000000000);
  } else if (argc == 3) {
    printf("loop_inc\n");
    loop_inc(1000000000);
  }
  return 0;
}
