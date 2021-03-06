CFLAGS = -Wall -Werror -O0 -g

socks_rx: socks_rx.c libsocks.o
socks_tx: socks_tx.c libsocks.o
	${CC} ${CFLAGS} -lreadline -o $@ $^

isprime: isprime.c
	${CC} ${CFLAGS} -lm -o $@ $^

prime: prime.c
	${CC} ${CFLAGS} -lm -o $@ $^

iprange: iprange.c
	${CC} -I${PWD}/ipcalc -L${PWD}/ipcalc ${CFLAGS} -lipcalc -o $@ $^

chess: chess.c
	${CC} ${CFLAGS} -std=c99 -D_BSD_SOURCE -D_POSIX_C_SOURCE -ludev -lcurses -o $@ $^

subnetcheck: subnetcheck.c
	${CC} -I${PWD}/ipcalc -L${PWD}/ipcalc ${CFLAGS} -lipcalc -o $@ $^

clean:
	@rm -f *.o *.out

.PHONY: clean
