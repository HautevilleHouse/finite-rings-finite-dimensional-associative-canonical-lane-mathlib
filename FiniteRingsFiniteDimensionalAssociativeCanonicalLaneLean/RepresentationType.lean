import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure RegularRepresentationPackage where
  ring : Type u
  ringStr : Ring ring
  finite : Fintype ring
  leftRegularModule : Module ring ring
  moduleFiniteDimensional : Prop
  faithfulAction : Prop

structure RegularRepresentationEvidence (R : RegularRepresentationPackage) where
  moduleFiniteDimensionalClosed : R.moduleFiniteDimensional
  faithfulActionClosed : R.faithfulAction

def RegularRepresentationClosed (R : RegularRepresentationPackage) : Prop :=
  R.moduleFiniteDimensional ∧ R.faithfulAction

theorem regular_representation_closed_from_evidence
    (R : RegularRepresentationPackage) (E : RegularRepresentationEvidence R) :
    RegularRepresentationClosed R := by
  exact And.intro E.moduleFiniteDimensionalClosed E.faithfulActionClosed

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse
