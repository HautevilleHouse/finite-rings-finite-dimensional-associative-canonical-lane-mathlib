import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure FiniteRingCategory where
  carrier : Type u
  plus : carrier → carrier → carrier
  times : carrier → carrier → carrier
  zero : carrier
  one : carrier
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
  finite : Fintype carrier

def ringIsFinite (R : FiniteRingCategory) : Fintype R.carrier := R.finite

theorem ringCategoryIsFinite (R : FiniteRingCategory) : Fintype R.carrier := R.finite

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse