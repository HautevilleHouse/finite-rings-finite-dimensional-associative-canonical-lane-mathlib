import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.FiniteRingCategory

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure ClassificationPackage where
  ring : FiniteRingCategory
  primePower : Prop
  fieldCase : Prop
  productDecomposition : Prop
  classificationComplete : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  primePowerClosed : C.primePower
  fieldCaseClosed : C.fieldCase
  productDecompositionClosed : C.productDecomposition
  classificationCompleteClosed : C.classificationComplete

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.primePower ∧ C.fieldCase ∧ C.productDecomposition ∧ C.classificationComplete

theorem classification_closed_from_evidence (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.primePowerClosed
    (And.intro E.fieldCaseClosed
      (And.intro E.productDecompositionClosed E.classificationCompleteClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse