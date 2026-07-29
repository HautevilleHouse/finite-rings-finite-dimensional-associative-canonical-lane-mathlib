import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.StructureConstants

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure WedderburnTheoremPackage where
  finiteDivisionRing : Prop
  isField : Prop
  structureConstants : StructureConstantsPackage

def WedderburnTheoremClosed (P : WedderburnTheoremPackage) : Prop :=
  P.finiteDivisionRing ∧ P.isField ∧ StructureConstantsClosed P.structureConstants

structure WedderburnTheoremEvidence (P : WedderburnTheoremPackage) where
  finiteDivisionRingClosed : P.finiteDivisionRing
  isFieldClosed : P.isField
  structureConstantsClosed : StructureConstantsEvidence P.structureConstants

theorem wedderburn_theorem_closed_from_evidence (P : WedderburnTheoremPackage)
    (E : WedderburnTheoremEvidence P) : WedderburnTheoremClosed P := by
  exact And.intro E.finiteDivisionRingClosed (And.intro E.isFieldClosed
    (structure_constants_closed_from_evidence P.structureConstants E.structureConstantsClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse