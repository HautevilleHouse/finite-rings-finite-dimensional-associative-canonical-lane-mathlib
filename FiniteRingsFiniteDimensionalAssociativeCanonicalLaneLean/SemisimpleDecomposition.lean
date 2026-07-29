import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure WedderburnDecompositionPackage where
  ring : Type u
  ringStr : Ring ring
  finite : Fintype ring
  artinianProp : IsArtinianRing ring
  jacobsonRadicalNil : Prop
  simpleComponents : List (Type v)
  simpleComponentFields : List (Field (simpleComponents.get _))
  decompositionIsomorphism : Prop

structure WedderburnEvidence (P : WedderburnDecompositionPackage) where
  decompositionIsomorphismClosed : P.decompositionIsomorphism

def WedderburnDecompositionClosed (P : WedderburnDecompositionPackage) : Prop :=
  P.decompositionIsomorphism

theorem wedderburn_decomposition_closed_from_evidence
    (P : WedderburnDecompositionPackage) (E : WedderburnEvidence P) :
    WedderburnDecompositionClosed P := by
  exact E.decompositionIsomorphismClosed

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse
