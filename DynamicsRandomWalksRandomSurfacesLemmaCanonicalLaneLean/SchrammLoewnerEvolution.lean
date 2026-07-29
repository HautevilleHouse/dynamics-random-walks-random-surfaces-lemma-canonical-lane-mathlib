import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure SchrammLoewnerEvolution where
  parameter : ℝ
  drivingFunction : ℝ → ℝ
  hullFamily : ℝ → Set ℂ
  conformalMap : ℝ → ℂ → ℂ
  locality : Prop
  conformalInvariance : Prop
  restrictionProperty : Prop

structure SchrammLoewnerEvolutionEvidence (S : SchrammLoewnerEvolution) where
  localityClosed : S.locality
  conformalInvarianceClosed : S.conformalInvariance
  restrictionPropertyClosed : S.restrictionProperty

def SchrammLoewnerEvolutionClosed (S : SchrammLoewnerEvolution) : Prop :=
  S.locality ∧ S.conformalInvariance ∧ S.restrictionProperty

theorem schramm_loewner_evolution_closed_from_evidence (S : SchrammLoewnerEvolution) (E : SchrammLoewnerEvolutionEvidence S) : SchrammLoewnerEvolutionClosed S := by
  exact And.intro E.localityClosed (And.intro E.conformalInvarianceClosed E.restrictionPropertyClosed)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse