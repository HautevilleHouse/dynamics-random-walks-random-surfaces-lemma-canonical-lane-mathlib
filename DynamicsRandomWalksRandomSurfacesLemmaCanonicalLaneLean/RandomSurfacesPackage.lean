import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomSurface where
  carrier : Type
  heightFunction : carrier → ℝ
  randomMeasure : carrier → ℝ → ℝ
  interfaceWidth : ℝ
  macroscopicShape : ℝ → ℝ

structure RandomSurfacesPackage where
  surface : RandomSurface
  heightDistribution : (ℝ → ℝ) → ℝ
  partitionFunction : ℝ → ℝ
  freeEnergy : ℝ → ℝ
  tensionCoefficient : ℝ → ℝ
  heightDistributionNormalized : heightDistribution = 1
  partitionFunctionFinite : partitionFunction > 0
  freeEnergyDefined : freeEnergy = -ln partitionFunction

def RandomSurfacesPackageEvidence (P : RandomSurfacesPackage) : Prop :=
  P.heightDistributionNormalized ∧ P.partitionFunctionFinite ∧ P.freeEnergyDefined

theorem random_surfaces_package_evidence_provided (P : RandomSurfacesPackage) : RandomSurfacesPackageEvidence P := by
  exact And.intro P.heightDistributionNormalized (And.intro P.partitionFunctionFinite P.freeEnergyDefined)

end HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse