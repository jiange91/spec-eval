# Include standard template for this suite
CC=clang
CFLAGS += -O3 -g
LIBS = -ltcmalloc
cgeist = /users/Zijian/Disagg-mlir/build/bin/cgeist
clang-b = /users/Zijian/Disagg-mlir/llvm-project/build/bin/clang
USE_MLIR = 0

obj_dir = obj
_obj = implicit.o mcf.o mcfutil.o output.o pbeampp.o pbla.o pflowup.o psimplex.o pstart.o readmin.o treeup.o
OBJ = $(addprefix $(obj_dir)/, $(_obj))

$(obj_dir):
	mkdir -p $@

$(obj_dir)/%.o : %.c *.h
	if [ $(USE_MLIR) -ne 0 ]; then \
		echo "use mlir"; \
		$(cgeist) -S $(CFLAGS) -function=* -memref-abi=0 -struct-abi=0 -c-style-memref=0 -I. $< -emit-llvm -o $@.ll; \
		$(clang-b) $(CFLAGS) $@.ll -c -o $@; \
	else \
		echo "not use mlir"; \
		$(CC) $(CFLAGS) $< -c -o $@; \
	fi

.PHONY: all
all: $(obj_dir) mcf

mcf: $(OBJ) 
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean
clean:
	rm -f $(OBJ) $(addsuffix .ll, $(OBJ))
