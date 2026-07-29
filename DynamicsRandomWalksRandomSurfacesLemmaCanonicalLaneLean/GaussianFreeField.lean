import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure GaussianFreeFieldPackage where
  fieldConfiguration : Type u
  covarianceStructure : Prop
  conformalCovariance : Prop
  markovProperty : Prop

structure GaussianFreeFieldEvidence (G : GaussianFreeFieldPackage) where
  covarianceStructureClosed : G.covarianceStructure
  conformalCovarianceClosed : G.conformalCovariance
  markovPropertyClosed : G.markovProperty

def GaussianFreeFieldClosed (G : GaussianFreeFieldPackage) : Prop :=
  G.covarianceStructure ∧ G.conformalCovariance ∧ G.markovProperty

theorem gaussian_free_field_closed_from_evidence
    (G : GaussianFreeFieldPackage) (E : GaussianFreeFieldEvidence G) :
    GaussianFreeFieldClosed G := by
  exact And.intro E.covarianceStructureClosed
    (And.intro E.conformalCovarianceClosed E.markovPropertyClosed)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse