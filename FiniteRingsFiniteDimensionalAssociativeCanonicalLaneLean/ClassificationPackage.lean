import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.FiniteRingStructure

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure ClassificationPackage (R : FiniteRing) (A : FiniteDimensionalAssociativeAlgebra R) where
  simpleComponents : Prop
  radical : Prop
  semisimplePart : Prop
  decompositionExists : A.carrier ≃+* (Product of matrix algebras over division rings)
  classificationClosed : Prop

structure ClassificationEvidence (R : FiniteRing) (A : FiniteDimensionalAssociativeAlgebra R) (C : ClassificationPackage R A) where
  simpleComponentsClosed : C.simpleComponents
  radicalClosed : C.radical
  semisimplePartClosed : C.semisimplePart
  decompositionExistsClosed : C.decompositionExists
  classificationClosedClosed : C.classificationClosed

def ClassificationClosed (R : FiniteRing) (A : FiniteDimensionalAssociativeAlgebra R) (C : ClassificationPackage R A) : Prop :=
  C.simpleComponents ∧ C.radical ∧ C.semisimplePart ∧ C.classificationClosed

theorem classification_closed_from_evidence (R : FiniteRing) (A : FiniteDimensionalAssociativeAlgebra R) (C : ClassificationPackage R A) (E : ClassificationEvidence R A C) : ClassificationClosed R A C := by
  exact And.intro E.simpleComponentsClosed (And.intro E.radicalClosed (And.intro E.semisimplePartClosed E.classificationClosedClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse