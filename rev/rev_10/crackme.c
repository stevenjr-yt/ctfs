#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("Usage: %s <flag>\n", argv[0]);
        return 1;
    }
    
    char expected[] = "DCSC{r3v_4nt1_d3bug_v4ult}";
    if (strcmp(argv[1], expected) == 0) {
        printf("Correct!\n");
    } else {
        printf("Wrong!\n");
    }
    return 0;
}
