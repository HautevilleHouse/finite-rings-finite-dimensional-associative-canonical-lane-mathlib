import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure RepresentationPackage (O : AdmissibleObject) where
  moduleStructure : Prop
  irreps : Prop
  compositionSeries : Prop
  krullSchmidt : Prop

structure RepresentationEvidence (O : AdmissibleObject) (R : RepresentationPackage O) where
  moduleStructureClosed : R.moduleStructure
  irrepsClosed : R.irreps
  compositionSeriesClosed : R.compositionSeries
  krullSchmidtClosed : R.krullSchmidt

def RepresentationClosed (O : AdmissibleObject) (R : RepresentationPackage O) : Prop :=
  R.moduleStructure ∧ R.irreps ∧ R.compositionSeries ∧ R.krullSchmidt

theorem representation_closed_from_evidence (O : AdmissibleObject) (R : RepresentationPackage O) (E : RepresentationEvidence O R) : RepresentationClosed O R := by
  exact And.intro E.moduleStructureClosed
    (And.intro E.irrepsClosed
      (And.intro E.compositionSeriesClosed E.krullSchmidtClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse