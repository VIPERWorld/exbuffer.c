# 配置工具链
AS=as      # 汇编器
CC=gcc   # C编译器
RC=windres # 资源编译器
LD=gcc     # 链接器

# 配置工具链的调用参数
ASFLAGS=-g
CCFLAGS=-g -Wno-unknown-pragmas -fexec-charset=GBK -finput-charset=UTF-8
RCFLAGS=
LDFLAGS=

OUTPUT=./
SRC=./
# 我们目标，可用'\'换行
SOURCE=test.c 

TARGET=test.exe

# 如何编译各种目标的过程

# 默认目标（make 不带目标对象，或者make all）
all: clean $(TARGET) 

$(TARGET) : $(SOURCE)
	$(CC) $(SOURCE) -o $(TARGET) $(CCFLAGS) -s

#make and rm必须tab开头
clean:
	rm $(TARGET) -f
