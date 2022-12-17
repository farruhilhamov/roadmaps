#include <iostream>
#include <cstring>
using namespace std;

int main() {
        {
      char *pcVar1;
      uint uVar2;
      char local_28 [16];
      string local_18;
      uint local_c;
      
      local_18 = "ThinkDifferent";
      memset(local_28,0,0x10);
      pcVar1 = fgets(local_28,0x10,stdin);
      if (pcVar1 == (char *)0xffffffffffffffff) {
        perror("fgets: ");
        uVar2 = 1;
      }
      else {
        for (local_c = 0;(local_c < 0x10 &&((local_c == 0 || ((local_28[local_c] != '\0' && (local_18[local_c] != '\0'))))));local_c++) {
          if (local_28[local_c] + 0x10 != local_18[local_c]) {
            puts("Wrong password. Please, try again later.");
            return 1;
          }
        }
        puts("Access granted.");
        uVar2 = 0;
      }
      return uVar2;
    }

    return 0;
}