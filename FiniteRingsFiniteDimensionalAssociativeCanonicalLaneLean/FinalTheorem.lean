import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean

def ConstrainedFiniteRingsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finite_rings_endgame (A : AdmissibleClass) : ConstrainedFiniteRingsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FiniteRingsFiniteDimensionalAssociativeCanonicalLaneLean
end HautevilleHouse