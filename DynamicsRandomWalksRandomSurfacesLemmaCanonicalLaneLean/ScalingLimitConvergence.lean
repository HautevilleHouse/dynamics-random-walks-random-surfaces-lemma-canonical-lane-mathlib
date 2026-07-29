import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure ScalingLimitConvergence where
  latticeSpacing : ℝ
  scalingExponent : ℝ
  tightness : Prop
  subsequentialLimit : Prop
  uniqueLimit : Prop
  limitIdentification : Prop

structure ScalingLimitConvergenceEvidence (S : ScalingLimitConvergence) where
  tightnessClosed : S.tightness
  subsequentialLimitClosed : S.subsequentialLimit
  uniqueLimitClosed : S.uniqueLimit
  limitIdentificationClosed : S.limitIdentification

def ScalingLimitConvergenceClosed (S : ScalingLimitConvergence) : Prop :=
  S.tightness ∧ S.subsequentialLimit ∧ S.uniqueLimit ∧ S.limitIdentification

theorem scaling_limit_convergence_closed_from_evidence (S : ScalingLimitConvergence) (E : ScalingLimitConvergenceEvidence S) : ScalingLimitConvergenceClosed S := by
  exact And.intro E.tightnessClosed (And.intro E.subsequentialLimitClosed (And.intro E.uniqueLimitClosed E.limitIdentificationClosed))

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse