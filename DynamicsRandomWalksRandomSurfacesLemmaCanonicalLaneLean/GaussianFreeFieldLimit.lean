import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure GaussianFreeField where
  field : ℝ × ℝ → ℝ
  covarianceKernel : (ℝ × ℝ) × (ℝ × ℝ) → ℝ
  varianceRegularization : ℝ → ℝ

structure GaussianFreeFieldLimitPackage where
  scalingLimit : RandomSurface → GaussianFreeField
  limitCovariance : (ℝ × ℝ) × (ℝ × ℝ) → ℝ
  universalityClass : Prop
  limitCovarianceMatchesKernel : Prop
  universalityHolds : universalityClass
  covarianceKernelPositive : limitCovariance > 0

data GaussianFreeFieldLimitEvidence (G : GaussianFreeFieldLimitPackage) : Prop where
  | evidence (h1 : G.limitCovarianceMatchesKernel) (h2 : G.universalityHolds) (h3 : G.covarianceKernelPositive) : GaussianFreeFieldLimitEvidence G

def GaussianFreeFieldLimitClosed (G : GaussianFreeFieldLimitPackage) : Prop :=
  G.limitCovarianceMatchesKernel ∧ G.universalityHolds ∧ G.covarianceKernelPositive

theorem gaussian_free_field_limit_closed_from_evidence (G : GaussianFreeFieldLimitPackage) (E : GaussianFreeFieldLimitEvidence G) : GaussianFreeFieldLimitClosed G := by
  cases E with
  | evidence h1 h2 h3 => exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse