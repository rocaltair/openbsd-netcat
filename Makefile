#	$OpenBSD: Makefile,v 1.6 2001/09/02 18:45:41 jakob Exp $

PROG = nc
SRCS = \
      netcat.c \
      atomicio.c \
      socks.c

BSD_LIB = \
	openbsd-lib/arc4random.c \
	openbsd-lib/readpassphrase.c

BSD_COMPAT = \
	openbsd-compat/base64.c \
	openbsd-compat/bsd-str.c

INC = -Iopenbsd-compat -Iopenbsd-lib
LIBS = 
OBJS = $(SRCS:.c=.o) $(BSD_LIB:.c=.o) $(BSD_COMPAT:.c=.o)

all: nc
nc: $(OBJS)
	$(CC) $(LIBS) $(OBJS) -o nc

$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

clean:
	rm -f $(OBJS) nc
