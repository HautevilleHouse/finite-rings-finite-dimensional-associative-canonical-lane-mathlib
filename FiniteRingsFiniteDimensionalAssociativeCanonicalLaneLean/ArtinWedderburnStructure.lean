import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.WedderburnTheorem

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

structure ArtinWedderburnPackage where
  semisimpleRing : Prop
  decompositionIntoMatrixRings : Prop
  wedderburnTheorem : WedderburnTheoremPackage

def ArtinWedderburnClosed (P : ArtinWedderburnPackage) : Prop :=
  P.semisimpleRing ∧ P.decompositionIntoMatrixRings ∧ WedderburnTheoremClosed P.wedderburnTheorem

structure ArtinWedderburnEvidence (P : ArtinWedderburnPackage) where
  semisimpleRingClosed : P.semisimpleRing
  decompositionIntoMatrixRingsClosed : P.decompositionIntoMatrixRings
  wedderburnTheoremClosed : WedderburnTheoremEvidence P.wedderburnTheorem

theorem artin_wedderburn_closed_from_evidence (P : ArtinWedderburnPackage)
    (E : ArtinWedderburnEvidence P) : ArtinWedderburnClosed P := by
  exact And.intro E.semisimpleRingClosed (And.intro E.decompositionIntoMatrixRingsClosed
    (wedderburn_theorem_closed_from_evidence P.wedderburnTheorem E.wedderburnTheoremClosed))

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse