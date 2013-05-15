#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <ctype.h>

char *chenc(unsigned char ch)
{
	static char ret[5];
	if (ch >= 0x80 || !isprint(ch)) {
		switch (ch) {
		case '\n':
			return "\\n";
		case '\t':
			return "\\t";
		case '\r':
			return "\\r";
		default:
			sprintf(ret, "\\%03o", ch);
			return ret;
		}
	}
	ret[0] = ch;
	ret[1] = 0;
	return ret;
}

int main(int argc, char **argv)
{
	int fd = open(argv[1], O_RDONLY);
	off_t off = strtol(argv[2], NULL, 0);
	struct stat st;
	fstat(fd, &st);
	unsigned char *buf = mmap(NULL, st.st_size, PROT_READ, MAP_SHARED, fd, 0);

	while (off < st.st_size) {
		printf("%8lx:	\"", (long int)off);
		while(off < st.st_size && buf[off]) {
			printf("%s", chenc(buf[off]));
			off++;
		}
		printf("\"\n");
		off++;
	}
	return 0;
}
