import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure AdmissibleObject where
  ring : Type u
  instRing : Ring ring
  instFinite : Finite ring
  instAssociative : Associative ring
  dimension : ℕ
  basis : Basis (Fin dimension) (ring) ring
  basisDefined : Prop

structure AdmittedClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmittedClass) : Prop :=
  objectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def objectClosed (O : AdmissibleObject) : Prop :=
  O.basisDefined

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse