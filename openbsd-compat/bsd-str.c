# include	"bsd-str.h"
# include <string.h>

size_t	strlcpy (char *dst, const char *src, size_t size) {
	size_t	len	= strlen (src);
	size_t	tocopy	= len;
	if (len >= size) {
		tocopy	= size;
	}
	memcpy (dst, src, tocopy);
	dst[tocopy]	= '\0';
	return	tocopy;
}
long long	strtonum (const char *nptr,
		long long minval,
		long long maxval,
             	const char **errstr)
{
	char*	endp	= 0;
	long long	result	= strtoll (nptr, &endp, 10);
	*errstr	= 0;
	return	result;
}
