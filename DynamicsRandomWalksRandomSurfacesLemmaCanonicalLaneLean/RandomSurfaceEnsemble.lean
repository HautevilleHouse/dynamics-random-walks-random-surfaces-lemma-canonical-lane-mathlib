import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomSurfaceEnsemble where
  baseSpace : Type u
  heightFunction : baseSpace → ℝ
  loopErasedWalk : Prop
  dimerModel : Prop
  gaussianFreeFieldScaling : Prop

structure RandomSurfaceEnsembleEvidence (E : RandomSurfaceEnsemble) where
  loopErasedWalkClosed : E.loopErasedWalk
  dimerModelClosed : E.dimerModel
  gaussianFreeFieldScalingClosed : E.gaussianFreeFieldScaling

def RandomSurfaceEnsembleClosed (E : RandomSurfaceEnsemble) : Prop :=
  E.loopErasedWalk ∧ E.dimerModel ∧ E.gaussianFreeFieldScaling

theorem random_surface_ensemble_closed_from_evidence (E : RandomSurfaceEnsemble) (Ev : RandomSurfaceEnsembleEvidence E) : RandomSurfaceEnsembleClosed E := by
  exact And.intro Ev.loopErasedWalkClosed (And.intro Ev.dimerModelClosed Ev.gaussianFreeFieldScalingClosed)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse