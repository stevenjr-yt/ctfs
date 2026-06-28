#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void win() {
    system("cat flag.txt");
}

int main() {
    char buf[64];
    setvbuf(stdout, NULL, _IONBF, 0);
    printf("Welcome to Use-After-Free!\n");
    printf("Give me your input:\n");
    gets(buf);
    printf("Bye!\n");
    return 0;
}
