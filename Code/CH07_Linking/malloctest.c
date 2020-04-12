#include <stdio.h>
#include "malloc.h"

int main()
{
    int *ptr = malloc(32);
    free(ptr);
    return 0;
}

#if 0

segmentation fault???
gcc: unsupported --wrap

gcc --version
Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk/usr/include/c++/4.2.1
Apple LLVM version 10.0.1 (clang-1001.0.46.4)
Target: x86_64-apple-darwin18.7.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin
#endif