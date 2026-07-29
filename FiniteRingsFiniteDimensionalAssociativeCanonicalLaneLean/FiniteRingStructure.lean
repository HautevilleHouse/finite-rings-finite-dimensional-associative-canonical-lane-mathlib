import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure FiniteRing where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addLeftNeg : ∀ a : carrier, ∃ b : carrier, add a b = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mulOne : ∀ a : carrier, mul a one = a
  oneMul : ∀ a : carrier, mul one a = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  finite : Fintype carrier

structure FiniteDimensionalAssociativeAlgebra (R : FiniteRing) where
  carrier : Type
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  zero : carrier
  one : carrier
  smul : R.carrier → carrier → carrier
  addAssoc : ∀ a b c : carrier, add (add a b) c = add a (add b c)
  addComm : ∀ a b c : carrier, add a b = add b a
  zeroAdd : ∀ a : carrier, add zero a = a
  addZero : ∀ a : carrier, add a zero = a
  addLeftNeg : ∀ a : carrier, ∃ b : carrier, add a b = zero
  mulAssoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul b c)
  mulOne : ∀ a : carrier, mul a one = a
  oneMul : ∀ a : carrier, mul one a = a
  leftDistrib : ∀ a b c : carrier, mul a (add b c) = add (mul a b) (mul a c)
  rightDistrib : ∀ a b c : carrier, mul (add a b) c = add (mul a c) (mul b c)
  smulAdd : ∀ r : R.carrier, ∀ a b : carrier, smul r (add a b) = add (smul r a) (smul r b)
  smulMul : ∀ r : R.carrier, ∀ a b : carrier, smul r (mul a b) = mul (smul r a) (smul r b)
  mulSmul : ∀ r : R.carrier, ∀ a b : carrier, mul a (smul r b) = smul r (mul a b)
  oneSmul : ∀ a : carrier, smul R.one a = a
  smulAssoc : ∀ r s : R.carrier, ∀ a : carrier, smul (R.mul r s) a = smul r (smul s a)
  finite : Fintype carrier
  finiteDimensional : FiniteDimensional (Module.Free R.carrier)

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse