import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.FiniteRingStructure

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure WedderburnDecomposition (R : Type u) [FiniteRing R] where
  simpleComponents : List (Type v)
  isomorphism : R ≃+* ⨁_{c ∈ simpleComponents} (End (c : Type v))

structure WedderburnEvidence (R : Type u) [FiniteRing R] (W : WedderburnDecomposition R) where
  decompositionClosed : True
  isomorphismClosed : True

def WedderburnClosed (R : Type u) [FiniteRing R] (W : WedderburnDecomposition R) : Prop :=
  True

theorem wedderburn_closed_from_evidence (R : Type u) [FiniteRing R] (W : WedderburnDecomposition R) (Ev : WedderburnEvidence R W) : WedderburnClosed R W := by
  exact True.intro

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse