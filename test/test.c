#include<stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main() {
	/*FILE *fp;*/
	int filesize;
	unsigned char buff[1];
	/*fp = fopen("./app", "rb+");*/
	int fd = open("./app", O_RDWR);
	if (fd < 0) {
		close(fd);
		return -1;
	}
	buff[0] = 0x31;
	int new_fd = lseek(fd, 0x00123, SEEK_SET);
	/*fwrite(buff, sizeof(unsigned char), 1, fp);*/
	write(new_fd, buff, sizeof(unsigned char));
	/*fclose(fp);*/
	/*close(fd);*/
	close(new_fd);
	return 0;
}
