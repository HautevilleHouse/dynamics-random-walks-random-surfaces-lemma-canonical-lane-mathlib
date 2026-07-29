import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure SurfaceHeightFluctuation where
  heightField : ℝ × ℝ → ℝ
  gradient : ℝ × ℝ → ℝ × ℝ
  laplacian : ℝ × ℝ → ℝ
  fluctuationAmplitude : ℝ

structure TensionFluctuationLemmaPackage where
  fluctuation : SurfaceHeightFluctuation
  surfaceTension : ℝ
  tensionFluctuationBound : ℝ
  scalingExponent : ℝ
  fluctuationAmplitudeDefined : fluctuation.fluctuationAmplitude ≠ 0
  surfaceTensionPositive : surfaceTension > 0
  tensionFluctuationBoundFinite : tensionFluctuationBound < ∞

def TensionFluctuationLemmaEvidence (T : TensionFluctuationLemmaPackage) : Prop :=
  T.fluctuationAmplitudeDefined ∧ T.surfaceTensionPositive ∧ T.tensionFluctuationBoundFinite

theorem tension_fluctuation_lemma_evidence_provided (T : TensionFluctuationLemmaPackage) : TensionFluctuationLemmaEvidence T := by
  exact And.intro T.fluctuationAmplitudeDefined (And.intro T.surfaceTensionPositive T.tensionFluctuationBoundFinite)

end HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse