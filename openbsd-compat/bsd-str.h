# if	!defined(BSDISM_H)
# define	BSDISM_H	1
#include	<unistd.h>

size_t	strlcpy (char *dst, const char *src, size_t size);
long long	strtonum (const char *nptr, long long minval, long long maxval, const char **errstr);

# endif
