ROGUE_OBJ = src/hit.o src/init.o src/instruct.o src/inventory.o src/level.o src/machdep.o src/main.o \
    src/message.o src/monster.o src/move.o src/object.o src/pack.o src/play.o src/random.o src/ring.o \
    src/room.o src/save.o src/score.o src/spec_hit.o src/throw.o src/trap.o src/use.o src/zap.o

CC = clang


CFLAGS = -c -DUNIX -std=c99 -g3 -ggdb -fwritable-strings -Iinclude
LDFLAGS = -lncurses -g


rogue: $(ROGUE_OBJ)
	$(CC) $(LDFLAGS) src/*.o -o rogue

clean:
	-rm -f src/*.o rogue
