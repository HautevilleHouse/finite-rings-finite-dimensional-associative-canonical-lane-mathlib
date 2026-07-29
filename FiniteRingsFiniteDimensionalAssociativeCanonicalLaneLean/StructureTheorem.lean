import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure StructurePackage (O : AdmissibleObject) where
  wedderburnLikeDecomposition : Prop
  simpleComponents : Prop
  radicalDesc : Prop
  semiSimplePart : Prop

structure StructureEvidence (O : AdmissibleObject) (S : StructurePackage O) where
  wedderburnLikeDecompositionClosed : S.wedderburnLikeDecomposition
  simpleComponentsClosed : S.simpleComponents
  radicalDescClosed : S.radicalDesc
  semiSimplePartClosed : S.semiSimplePart

def StructureClosed (O : AdmissibleObject) (S : StructurePackage O) : Prop :=
  S.wedderburnLikeDecomposition ∧ S.simpleComponents ∧ S.radicalDesc ∧ S.semiSimplePart

theorem structure_closed_from_evidence (O : AdmissibleObject) (S : StructurePackage O) (E : StructureEvidence O S) : StructureClosed O S := by
  exact And.intro E.wedderburnLikeDecompositionClosed
    (And.intro E.simpleComponentsClosed
      (And.intro E.radicalDescClosed E.semiSimplePartClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse