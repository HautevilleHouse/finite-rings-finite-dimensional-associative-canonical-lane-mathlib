import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure BasisConstructionPackage (O : AdmissibleObject) where
  basisMultiplicities : Prop
  structureConstants : Prop
  centerBasis : Prop
  isomorphismToMatrixRing : Prop

structure BasisConstructionEvidence (O : AdmissibleObject) (B : BasisConstructionPackage O) where
  basisMultiplicitiesClosed : B.basisMultiplicities
  structureConstantsClosed : B.structureConstants
  centerBasisClosed : B.centerBasis
  isomorphismToMatrixRingClosed : B.isomorphismToMatrixRing

def BasisConstructionClosed (O : AdmissibleObject) (B : BasisConstructionPackage O) : Prop :=
  B.basisMultiplicities ∧ B.structureConstants ∧ B.centerBasis ∧ B.isomorphismToMatrixRing

theorem basis_construction_closed_from_evidence (O : AdmissibleObject) (B : BasisConstructionPackage O) (E : BasisConstructionEvidence O B) : BasisConstructionClosed O B := by
  exact And.intro E.basisMultiplicitiesClosed
    (And.intro E.structureConstantsClosed
      (And.intro E.centerBasisClosed E.isomorphismToMatrixRingClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse