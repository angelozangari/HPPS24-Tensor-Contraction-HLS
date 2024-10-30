// This file includes code from SpMM_TCAD licensed under the
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
// 
// Original author(s): Shiqing Li, Shuo Huai, Weichen Liu
// Source: [https://github.com/lsq314/SpMM_TCAD
// License: https://creativecommons.org/licenses/by-nc-sa/4.0/
//
// Modifications made: 
// 
// Note: This code may not be used for commercial purposes as per the
// Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.


#ifndef RCACHE
#define RCACHE

#include "core.h"

void request_to_rbanks(rcache_stream* request, id_t base_addr_rcsr,
        rcache_stream* bank1, rcache_stream* bank2, rcache_stream* bank3, rcache_stream* bank4
		);

void rcrequest_manager(rcache_stream* from, rcache_stream* rrequest_result,
		rresponse_stream* response, rcache_stream* to1, ap_uint<128>* B_rcsr);

void rcache(rcache_stream* request, id_t base_addr_rcsr, rresponse_stream* rres, id_t* access_number, id_t* hit_number,
		mi_stream* ms);

#endif
