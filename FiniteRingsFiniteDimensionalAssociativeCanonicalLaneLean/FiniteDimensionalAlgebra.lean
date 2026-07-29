import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.FiniteRingCategory

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure FiniteDimensionalAlgebra (R : FiniteRingCategory) where
  carrier : Type u
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  zero : carrier
  one : carrier
  smul : R.carrier → carrier → carrier
  addAssoc : ∀ a b c : carrier, plus (plus a b) c = plus a (plus b c)
  addComm : ∀ a b : carrier, plus a b = plus b a
  zeroAdd : ∀ a : carrier, plus zero a = a
  addZero : ∀ a : carrier, plus a zero = a
  addLeftNeg : ∀ a : carrier, plus a (addNeg a) = zero
  mulAssoc : ∀ a b c : carrier, times (times a b) c = times a (times b c)
  mulOne : ∀ a : carrier, times a one = a
  oneMul : ∀ a : carrier, times one a = a
  leftDistrib : ∀ a b c : carrier, times a (plus b c) = plus (times a b) (times a c)
  rightDistrib : ∀ a b c : carrier, times (plus a b) c = plus (times a c) (times b c)
  smulAdd : ∀ r : R.carrier, ∀ a b : carrier, smul r (plus a b) = plus (smul r a) (smul r b)
  smulMul : ∀ r : R.carrier, ∀ a b : carrier, smul r (times a b) = times a (smul r b)
  addSmul : ∀ r s : R.carrier, ∀ a : carrier, smul (R.plus r s) a = plus (smul r a) (smul s a)
  mulSmul : ∀ r s : R.carrier, ∀ a : carrier, smul (R.times r s) a = smul r (smul s a)
  oneSmul : ∀ a : carrier, smul R.one a = a
  smulOne : ∀ r : R.carrier, smul r one = times (smul r one) one
  timesSmul : ∀ r : R.carrier, ∀ a b : carrier, times a (smul r b) = smul r (times a b)
  finite : Fintype carrier

def algebraIsFinite (R : FiniteRingCategory) (A : FiniteDimensionalAlgebra R) : Fintype A.carrier := A.finite

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse