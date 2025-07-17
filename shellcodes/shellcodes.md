## Shellcodes

1. shellcode.105-59.s

    - avoid 0x48 in shellcode
    - `setuid` + `execve`

2. shellcode.59.s

    - if you cannot use syscall, sysenter, int
    - `execve("/bin//sh", ["/bin//sh", "-p", NULL], NULL)`

3. shellcode.2-0-1-60.s

    - open,read,write /flag

4. shellcode.90-60.s

    - chmod 777 /flag