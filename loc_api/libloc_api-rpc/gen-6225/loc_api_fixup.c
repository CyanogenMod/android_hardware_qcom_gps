/*=============================================================================
                        L O C _ A P I _ F I X U P . C

GENERAL DESCRIPTION
  This file adds API constants that are not automatically transmitted to
  the RPC stubs, and it also fixes other RPC-related problems.

  ---------------------------------------------------------------------------
Copyright (c) 2009, QUALCOMM USA, INC.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

�         Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer. 

�         Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution. 

�         Neither the name of the QUALCOMM USA, INC.  nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  ---------------------------------------------------------------------------
=============================================================================*/

#include <rpc/rpc.h>

#include "loc_api_fixup.h"

#ifdef ADD_XDR_FLOAT

int
xdr_float(xdrp, fp)
        XDR *xdrp; 
        float *fp;
{
        return xdr_long(xdrp, (long*)fp);
}    

int  
xdr_double(xdrp, dp)
        XDR *xdrp;
        double *dp; 
{
                return xdr_long(xdrp, (long*)dp + 1)
                                && xdr_long(xdrp, (long*)dp);
} 

#endif /* ADD_XDR_FLOAT */
