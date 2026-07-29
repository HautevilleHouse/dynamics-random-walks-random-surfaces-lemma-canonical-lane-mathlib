import DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Random Walk Package
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomWalkPackage (A : AdmissibleClass) where
  walkSpace : Type u
  transitionProbabilities : walkSpace → walkSpace → ℝ
  stationarity : Prop
  stationaryMeasure : walkSpace → ℝ
  mixingTime : ℝ
  walkSpaceTopology : TopologicalSpace walkSpace

structure RandomWalkEvidence (A : AdmissibleClass) (R : RandomWalkPackage A) where
  stationarityClosed : R.stationarity
  mixingTimeFinite : R.mixingTime < ∞

def RandomWalkClosed (A : AdmissibleClass) (R : RandomWalkPackage A) : Prop :=
  R.stationarity ∧ (R.mixingTime < ∞)

theorem random_walk_closed_from_evidence (A : AdmissibleClass) (R : RandomWalkPackage A) (E : RandomWalkEvidence A R) : RandomWalkClosed A R := by
  exact And.intro E.stationarityClosed E.mixingTimeFinite

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse