import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomWalkProcess where
  stepDistribution : ℝ → ℝ
  residenceTimes : ℕ → ℝ
  diffusivity : ℝ

structure HydrodynamicLimitPackage where
  process : RandomWalkProcess
  scalingLimit : (ℝ × ℝ) → ℝ
  limitingEquation : (ℝ × ℝ → ℝ) → (ℝ × ℝ → ℝ)
  empiricalMeasure : ℕ → (ℝ → ℝ)
  limitAsMeasure : ℝ → (ℝ → ℝ)
  scalingLimitConverges : Prop
  limitingEquationSatisfies : Prop
  empiricalMeasureConverges : Prop

structure HydrodynamicLimitEvidence (H : HydrodynamicLimitPackage) where
  scalingLimitConvergesClosed : H.scalingLimitConverges
  limitingEquationSatisfiesClosed : H.limitingEquationSatisfies
  empiricalMeasureConvergesClosed : H.empiricalMeasureConverges

def HydrodynamicLimitClosed (H : HydrodynamicLimitPackage) : Prop :=
  H.scalingLimitConverges ∧ H.limitingEquationSatisfies ∧ H.empiricalMeasureConverges

theorem hydrodynamic_limit_closed_from_evidence (H : HydrodynamicLimitPackage) (E : HydrodynamicLimitEvidence H) : HydrodynamicLimitClosed H := by
  exact And.intro E.scalingLimitConvergesClosed (And.intro E.limitingEquationSatisfiesClosed E.empiricalMeasureConvergesClosed)

end HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse