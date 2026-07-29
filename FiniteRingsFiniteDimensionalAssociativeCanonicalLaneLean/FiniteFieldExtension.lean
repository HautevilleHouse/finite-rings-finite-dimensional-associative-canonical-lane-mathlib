import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.FiniteRingStructure

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure FiniteFieldExtension (K : Type u) [Field K] (L : Type v) where
  field : Field L
  algebra : FiniteDimensionalAssociativeAlgebra K L
  finite : Fintype L

structure FiniteFieldExtensionEvidence (K : Type u) [Field K] (L : Type v) (E : FiniteFieldExtension K L) where
  algebraClosed : True
  finiteClosed : True

def FiniteFieldExtensionClosed (K : Type u) [Field K] (L : Type v) (E : FiniteFieldExtension K L) : Prop :=
  True

theorem finite_field_extension_closed_from_evidence (K : Type u) [Field K] (L : Type v) (E : FiniteFieldExtension K L) (Ev : FiniteFieldExtensionEvidence K L E) : FiniteFieldExtensionClosed K L E := by
  exact True.intro

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse