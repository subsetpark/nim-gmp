
import gmp

import std/unittest

test "in ptr":
  var a,b: mpz_t
  discard mpz_init_set_str(a.addr,"10",10)
  discard mpz_init_set_str(b.addr,"1000000000",10)
  mpz_add(a.addr,a.addr,b.addr)
  check "1000000010" == mpz_get_str(nil,10,a.addr)
