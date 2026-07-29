import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.FiniteDimensionalAlgebra

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure MaschkePackage (R : FiniteRingCategory) where
  groupAlgebra : FiniteDimensionalAlgebra R
  charNotDividesOrder : Prop
  completeReducibility : Prop
  allModulesSemisimple : Prop

structure MaschkeEvidence (R : FiniteRingCategory) (M : MaschkePackage R) where
  charNotDividesOrderClosed : M.charNotDividesOrder
  completeReducibilityClosed : M.completeReducibility
  allModulesSemisimpleClosed : M.allModulesSemisimple

def MaschkeClosed (R : FiniteRingCategory) (M : MaschkePackage R) : Prop :=
  M.charNotDividesOrder ∧ M.completeReducibility ∧ M.allModulesSemisimple

theorem maschke_closed_from_evidence (R : FiniteRingCategory) (M : MaschkePackage R) (E : MaschkeEvidence R M) :
    MaschkeClosed R M := by
  exact And.intro E.charNotDividesOrderClosed
    (And.intro E.completeReducibilityClosed E.allModulesSemisimpleClosed)

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse