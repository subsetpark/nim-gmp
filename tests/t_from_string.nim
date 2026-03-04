

import gmp
import gmp/utils
import std/unittest

var res = init_mpz() # initialized to zero
let x: mpz = 10 # convert int to mpz_t
let y = init_mpz("15",10) # construct from string (base: 10)

mpz_add(res,x,y)

test "cmp":
  # a few comparisons for good measure
  check x < y 
  check x != y



