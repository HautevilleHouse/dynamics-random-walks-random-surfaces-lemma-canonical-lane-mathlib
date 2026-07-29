import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure GaussianFreeFieldBridge (V : Type u) where
  field : V → ℤ
  covarianceCondition : Prop
  bridgeClosed : Prop

structure GaussianFreeFieldBridgeEvidence (V : Type u) (G : GaussianFreeFieldBridge V) where
  covarianceConditionClosed : G.covarianceCondition
  bridgeClosedClosed : G.bridgeClosed

def GaussianFreeFieldBridgeClosed (V : Type u) (G : GaussianFreeFieldBridge V) : Prop :=
  G.covarianceCondition ∧ G.bridgeClosed

theorem gaussian_free_field_bridge_closed_from_evidence
    (V : Type u) (G : GaussianFreeFieldBridge V)
    (E : GaussianFreeFieldBridgeEvidence V G) : GaussianFreeFieldBridgeClosed V G := by
  exact And.intro E.covarianceConditionClosed E.bridgeClosedClosed

end HautevilleHouse
end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean