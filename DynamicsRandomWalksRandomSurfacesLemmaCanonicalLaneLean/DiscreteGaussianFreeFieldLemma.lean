import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.ZMod.Basic

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure DiscreteGaussianFreeFieldLemma (Λ : Type u) [Fintype Λ] where
  randomWalk : (Λ → ℤ)
  heightFunction : (Λ → ℤ)
  correlationStructure : Prop
  lemmaClosed : Prop

structure DiscreteGaussianFreeFieldLemmaEvidence (Λ : Type u) [Fintype Λ] (D : DiscreteGaussianFreeFieldLemma Λ) where
  correlationStructureClosed : D.correlationStructure
  lemmaClosedClosed : D.lemmaClosed

def DiscreteGaussianFreeFieldLemmaClosed (Λ : Type u) [Fintype Λ] (D : DiscreteGaussianFreeFieldLemma Λ) : Prop :=
  D.correlationStructure ∧ D.lemmaClosed

theorem discrete_gaussian_free_field_lemma_closed_from_evidence
    (Λ : Type u) [Fintype Λ] (D : DiscreteGaussianFreeFieldLemma Λ)
    (E : DiscreteGaussianFreeFieldLemmaEvidence Λ D) : DiscreteGaussianFreeFieldLemmaClosed Λ D := by
  exact And.intro E.correlationStructureClosed E.lemmaClosedClosed

end HautevilleHouse
end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean