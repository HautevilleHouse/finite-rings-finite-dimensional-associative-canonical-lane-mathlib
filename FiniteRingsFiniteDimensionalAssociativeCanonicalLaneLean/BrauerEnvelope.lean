import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure BrauerEnvelopePackage where
  baseField : Type u
  fieldStr : Field baseField
  group : Type v
  groupStr : Group group
  groupAlgebra : Algebra (MonoidAlgebra baseField group)
  envelopeSet : Set (MonoidAlgebra baseField group)
  envelopeClosure : Subalgebra baseField (MonoidAlgebra baseField group)
  envelopeFiniteDimensional : Prop
  envelopeContainsGroup : Prop

structure BrauerEnvelopeEvidence (B : BrauerEnvelopePackage) where
  envelopeFiniteDimensionalClosed : B.envelopeFiniteDimensional
  envelopeContainsGroupClosed : B.envelopeContainsGroup

def BrauerEnvelopeClosed (B : BrauerEnvelopePackage) : Prop :=
  B.envelopeFiniteDimensional ∧ B.envelopeContainsGroup

theorem brauer_envelope_closed_from_evidence
    (B : BrauerEnvelopePackage) (E : BrauerEnvelopeEvidence B) :
    BrauerEnvelopeClosed B := by
  exact And.intro E.envelopeFiniteDimensionalClosed E.envelopeContainsGroupClosed

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse
