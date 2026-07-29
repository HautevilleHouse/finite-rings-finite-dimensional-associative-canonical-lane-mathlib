import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure IdempotentLiftPackage where
  ring : Type u
  ringStr : Ring ring
  finite : Fintype ring
  ideal : Ideal ring
  idealNilpotent : Prop
  idempotentInQuotient : ring ⧸ ideal
  liftToOriginal : ring
  liftProperties : Prop

structure IdempotentLiftEvidence (I : IdempotentLiftPackage) where
  idempotentInQuotientIdempotent : (I.idempotentInQuotient : ring ⧸ I.ideal) * (I.idempotentInQuotient : ring ⧸ I.ideal) = (I.idempotentInQuotient : ring ⧸ I.ideal)
  liftToOriginalIdempotent : I.liftToOriginal * I.liftToOriginal = I.liftToOriginal
  liftLiftsQuotient : (Ideal.Quotient.mk I.ideal) I.liftToOriginal = I.idempotentInQuotient

def IdempotentLiftClosed (I : IdempotentLiftPackage) : Prop :=
  (I.liftToOriginal * I.liftToOriginal = I.liftToOriginal) ∧
  ((Ideal.Quotient.mk I.ideal) I.liftToOriginal = I.idempotentInQuotient)

theorem idempotent_lift_closed_from_evidence
    (I : IdempotentLiftPackage) (E : IdempotentLiftEvidence I) :
    IdempotentLiftClosed I := by
  exact And.intro E.liftToOriginalIdempotent E.liftLiftsQuotient

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse
