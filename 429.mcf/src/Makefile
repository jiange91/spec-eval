# Include standard template for this suite
CC=clang
CFLAGS += -Wall -g -O3
LIBS = -ltcmalloc

obj_dir = obj
_obj = implicit.o mcf.o mcfutil.o output.o pbeampp.o pbla.o pflowup.o psimplex.o pstart.o readmin.o treeup.o
OBJ = $(addprefix $(obj_dir)/, $(_obj))

$(obj_dir):
	mkdir -p $@

$(obj_dir)/%.o : %.c *.h
	$(CC) $(CFLAGS) $< -c -o $@

mcf: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean
clean:
	rm -f $(OBJ)