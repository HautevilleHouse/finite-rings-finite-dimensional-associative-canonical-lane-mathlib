import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure StructureConstantsPackage where
  finiteCondition : Prop
  associativityCondition : Prop
  divisionRingCondition : Prop
  fieldCondition : Prop

def StructureConstantsClosed (P : StructureConstantsPackage) : Prop :=
  P.finiteCondition ∧ P.associativityCondition ∧ P.divisionRingCondition ∧ P.fieldCondition

structure StructureConstantsEvidence (P : StructureConstantsPackage) where
  finiteConditionClosed : P.finiteCondition
  associativityConditionClosed : P.associativityCondition
  divisionRingConditionClosed : P.divisionRingCondition
  fieldConditionClosed : P.fieldCondition

theorem structure_constants_closed_from_evidence (P : StructureConstantsPackage)
    (E : StructureConstantsEvidence P) : StructureConstantsClosed P := by
  exact And.intro E.finiteConditionClosed (And.intro E.associativityConditionClosed
    (And.intro E.divisionRingConditionClosed E.fieldConditionClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse