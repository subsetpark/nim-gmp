
{.push warning[user]: off.}
when defined(USE_GMP_HEADER):
  include ./header
else:
  include ./pure
{.pop.}

#[ to get rid of 
./utils.nim(17, 6) Error:
type bound operation `finaliseFinalizerWrapper` can be defined only in the same module with its type (mm_mpz_struct)
]#

proc finalise*(a: ref mpz_t) =
  mpz_clear(a[])

proc finalise*(a: ref mpf_t) =
  mpf_clear(a[])

proc `=destroy`*(a: var mm_mpz_struct) =
  mpz_clear(a)

proc `=destroy`*(a: var mm_mpf_struct) =
  mpf_clear(a)
