#######################
Deprecations by version
#######################

Announced in 0.49
*****************

Replace inplace hipblasXtrmm with out of place hipblasXtrmm
===========================================================

The hipblasXtrmm API, along with batched versions, will be changing in hipBLAS 1.0
release to allow in-place and out-of-place behavior. This change will introduce an
output matrix 'C', matching the rocblas_xtrmm_outofplace API and the cublasXtrmm API.

Announced in 1.0
****************

Remove packed_int8x4 datatype
=============================

There are two int8 datatypes: int8_t and packed_int8x4. The packed_int8x4 datatype
will be removed in hipBLAS 1.0. int8_t is the C99 unsigned 8 bit integer. packed_int8x4
has 4 consecutive int8_t numbers in the k dimension packed into 32 bits. packed_int8x4
is only used in hipblasGemmEx. This will only affect use of hipblasGemmEx with
packed_int8x4 datatype. int8_t will continue to be available in hipblasGemmEx.
