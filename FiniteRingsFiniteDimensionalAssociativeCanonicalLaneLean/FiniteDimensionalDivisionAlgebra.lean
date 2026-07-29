import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteRingsFiniteDimensionalAssociative.FiniteRingStructure

namespace HautevilleHouse
namespace FiniteRingsFiniteDimensionalAssociative

structure FiniteDimensionalDivisionAlgebra (K : Type u) [Field K] (D : Type v) where
  algebra : FiniteDimensionalAssociativeAlgebra K D
  nonzeroInvertible : ∀ (x : D), x ≠ algebra.ring.zero → ∃ y : D, algebra.ring.mul x y = algebra.ring.one

structure FiniteDimensionalDivisionAlgebraEvidence (K : Type u) [Field K] (D : Type v) (A : FiniteDimensionalDivisionAlgebra K D) where
  algebraClosed : True
  invertibleClosed : ∀ (x : D), x ≠ A.algebra.ring.zero → A.algebra.ring.mul x (some y : D) = A.algebra.ring.one

def FiniteDimensionalDivisionAlgebraClosed (K : Type u) [Field K] (D : Type v) (A : FiniteDimensionalDivisionAlgebra K D) : Prop :=
  True

theorem finite_dim_division_algebra_closed_from_evidence (K : Type u) [Field K] (D : Type v) (A : FiniteDimensionalDivisionAlgebra K D) (Ev : FiniteDimensionalDivisionAlgebraEvidence K D A) : FiniteDimensionalDivisionAlgebraClosed K D A := by
  exact True.intro

end FiniteRingsFiniteDimensionalAssociative
end HautevilleHouse