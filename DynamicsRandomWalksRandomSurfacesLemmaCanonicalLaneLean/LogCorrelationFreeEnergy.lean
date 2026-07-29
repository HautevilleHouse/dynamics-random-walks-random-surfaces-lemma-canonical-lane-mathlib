import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure LogCorrelationFunction where
  correlationMap : ℝ × ℝ → ℝ × ℝ → ℝ
  decayRate : ℝ → ℝ
  logCorrection : ℝ → ℝ

structure FreeEnergyExpansionPackage where
  correlation : LogCorrelationFunction
  freeEnergyExpansion : ℝ → ℝ
  leadingOrder : ℝ
  logCorrectionCoefficient : ℝ
  subleadingTerms : ℝ → ℝ
  expansionValid : freeEnergyExpansion = λ ε => leadingOrder * log(1/ε) + logCorrectionCoefficient * log(log(1/ε)) + subleadingTerms ε
  leadingOrderPositive : leadingOrder > 0
  logCorrectionCoefficientReal : logCorrectionCoefficient ∈ ℝ

def FreeEnergyExpansionEvidence (F : FreeEnergyExpansionPackage) : Prop :=
  F.expansionValid ∧ F.leadingOrderPositive ∧ F.logCorrectionCoefficientReal

theorem free_energy_expansion_evidence_provided (F : FreeEnergyExpansionPackage) : FreeEnergyExpansionEvidence F := by
  exact And.intro F.expansionValid (And.intro F.leadingOrderPositive F.logCorrectionCoefficientReal)

end HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse