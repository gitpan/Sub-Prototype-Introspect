#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

MODULE = Sub::Prototype::Introspect		PACKAGE = Sub::Prototype::Introspect		

void
proto_getsig (code)
	CV *code
INIT:
	STRLEN len;
PPCODE:
	ST(0) = newSVpv(SvPV((SV*)code,len),0);
	sv_2mortal(ST(0));
	XSRETURN(1);

