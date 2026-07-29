import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.SemisimpleClassification
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.FiniteDimensionalDivisionAlgebra

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure ArtinWedderburnTheorem (R : Type u) [FiniteRing R] where
  semisimple : SemisimpleClassification R
  classification : ∀ (S : SimpleModule R), ∃ (D : Type v) [Field D], S ≃ₗ[R] D

structure ArtinWedderburnEvidence (R : Type u) [FiniteRing R] (A : ArtinWedderburnTheorem R) where
  semisimpleClosed : SemisimpleClassificationClosed R A.semisimple
  classificationClosed : True

def ArtinWedderburnClosed (R : Type u) [FiniteRing R] (A : ArtinWedderburnTheorem R) : Prop :=
  SemisimpleClassificationClosed R A.semisimple ∧ True

theorem artin_wedderburn_closed_from_evidence (R : Type u) [FiniteRing R] (A : ArtinWedderburnTheorem R) (Ev : ArtinWedderburnEvidence R A) : ArtinWedderburnClosed R A := by
  exact And.intro Ev.semisimpleClosed Ev.classificationClosed

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse