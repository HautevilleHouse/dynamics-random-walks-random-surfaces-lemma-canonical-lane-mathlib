import DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.RandomWalkPackage

/-!
# Random Surface Package
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomSurfacePackage (A : AdmissibleClass) (R : RandomWalkPackage A) where
  surface : Type u
  heightFunction : surface → ℝ
  embeddingEnergy : surface → ℝ
  tetheringForce : surface → ℝ
  surfaceTopology : TopologicalSpace surface

structure RandomSurfaceEvidence (A : AdmissibleClass) (R : RandomWalkPackage A) (S : RandomSurfacePackage A R) where
  embeddingEnergyFinite : S.embeddingEnergy < ∞
  tetheringForceBounded : ∃ (M : ℝ), ∀ (x : S.surface), S.tetheringForce x ≤ M

def RandomSurfaceClosed (A : AdmissibleClass) (R : RandomWalkPackage A) (S : RandomSurfacePackage A R) : Prop :=
  S.embeddingEnergy < ∞ ∧ (∃ (M : ℝ), ∀ (x : S.surface), S.tetheringForce x ≤ M)

theorem random_surface_closed_from_evidence (A : AdmissibleClass) (R : RandomWalkPackage A) (S : RandomSurfacePackage A R) (E : RandomSurfaceEvidence A R S) :
    RandomSurfaceClosed A R S := by
  exact And.intro E.embeddingEnergyFinite E.tetheringForceBounded

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse