#include <machine/asm.h>

.ident	"$FreeBSD: src/lib/libc/arm/gen/_ctx_start.S,v 1.2.22.1.6.1 2010/12/21 17:09:25 kensmith Exp $"
ENTRY(_ctx_start)
	mov	lr, pc
	mov	pc, r4
	mov	r0, r5
	bl	_C_LABEL(ctx_done)
	bl	_C_LABEL(abort)
