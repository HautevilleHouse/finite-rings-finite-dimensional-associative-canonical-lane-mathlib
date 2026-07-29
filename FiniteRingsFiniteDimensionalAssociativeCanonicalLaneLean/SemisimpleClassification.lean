import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.FiniteRingStructure
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.WedderburnStructure

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure SemisimpleClassification (R : Type u) [FiniteRing R] where
  semisimple : Prop
  decomposition : WedderburnDecomposition R
  evidence : WedderburnEvidence R decomposition

structure SemisimpleClassificationEvidence (R : Type u) [FiniteRing R] (S : SemisimpleClassification R) where
  semisimpleClosed : S.semisimple
  decompositionClosed : WedderburnClosed R S.decomposition

def SemisimpleClassificationClosed (R : Type u) [FiniteRing R] (S : SemisimpleClassification R) : Prop :=
  S.semisimple ∧ WedderburnClosed R S.decomposition

theorem semisimple_classification_closed_from_evidence (R : Type u) [FiniteRing R] (S : SemisimpleClassification R) (Ev : SemisimpleClassificationEvidence R S) : SemisimpleClassificationClosed R S := by
  exact And.intro Ev.semisimpleClosed Ev.decompositionClosed

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse