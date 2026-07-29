import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomWalkSurface where
  stateSpace : Type u
  transitionKernel : stateSpace → Set stateSpace
  stepDistribution : stateSpace → Set ℝ
  surfaceHeight : stateSpace → ℝ
  randomWalkClosed : Prop
  surfaceRegularity : Prop

structure RandomWalkSurfaceEvidence (S : RandomWalkSurface) where
  randomWalkClosedTerm : S.randomWalkClosed
  surfaceRegularityTerm : S.surfaceRegularity

def RandomWalkSurfaceClosed (S : RandomWalkSurface) : Prop :=
  S.randomWalkClosed ∧ S.surfaceRegularity

theorem random_walk_surface_closed_from_evidence (S : RandomWalkSurface) (E : RandomWalkSurfaceEvidence S) : RandomWalkSurfaceClosed S := by
  exact And.intro E.randomWalkClosedTerm E.surfaceRegularityTerm

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse