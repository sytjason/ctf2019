void __cdecl __noreturn main(int a1) { // 0x84207fb
    char format; // [esp+0h] [ebp-3Ah]
    int *v2; // [esp+32h] [ebp-8h]
    v2 = &a1;
    signal(14, (__sighandler_t)sub_84207DE);
    alarm(5u);
    puts("Hello and welcome to \x1B[3mour\x1B[23m voting application!");
    puts("We noticed that there occured a slight buffer overflow in the previous version.");
    puts("Now we never return, so the problem should be solved? Right?");
    puts("Today you are the one who decides what we will vote about.\n");
    printf("Topic: ");
    fflush(stdin);
    fflush(stdout);
    __isoc99_scanf((int)"%[^\n]%*c", (int)&format); // 0x84208c9
    printf(&format); //0x84208d8
    puts("\nWill be the voting topic of today!");
    exit(0);
}