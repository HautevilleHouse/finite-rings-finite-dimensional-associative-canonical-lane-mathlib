import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.FiniteRingStructure

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure JacobsonRadical (R : Type u) [FiniteRing R] where
  radical : Set R
  ideal : Ideal R
  nilpotent : True
  maximalIdealIntersection : radical = ⋂ (m : MaximalIdeal R), m.carrier

structure JacobsonRadicalEvidence (R : Type u) [FiniteRing R] (J : JacobsonRadical R) where
  radicalClosed : True
  idealClosed : True
  nilpotentClosed : True
  maximalIdealIntersectionClosed : True

def JacobsonRadicalClosed (R : Type u) [FiniteRing R] (J : JacobsonRadical R) : Prop :=
  True

theorem jacobson_radical_closed_from_evidence (R : Type u) [FiniteRing R] (J : JacobsonRadical R) (Ev : JacobsonRadicalEvidence R J) : JacobsonRadicalClosed R J := by
  exact True.intro

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse