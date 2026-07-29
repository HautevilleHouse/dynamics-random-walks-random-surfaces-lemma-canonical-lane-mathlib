import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Fintype.Basic

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomSurfaceHeightFunction (Γ : Type u) [Fintype Γ] where
  heights : Γ → ℤ
  laplacianCondition : Prop
  heightFunctionClosed : Prop

structure RandomSurfaceHeightFunctionEvidence (Γ : Type u) [Fintype Γ] (H : RandomSurfaceHeightFunction Γ) where
  laplacianConditionClosed : H.laplacianCondition
  heightFunctionClosedClosed : H.heightFunctionClosed

def RandomSurfaceHeightFunctionClosed (Γ : Type u) [Fintype Γ] (H : RandomSurfaceHeightFunction Γ) : Prop :=
  H.laplacianCondition ∧ H.heightFunctionClosed

theorem random_surface_height_function_closed_from_evidence
    (Γ : Type u) [Fintype Γ] (H : RandomSurfaceHeightFunction Γ)
    (E : RandomSurfaceHeightFunctionEvidence Γ H) : RandomSurfaceHeightFunctionClosed Γ H := by
  exact And.intro E.laplacianConditionClosed E.heightFunctionClosedClosed

end HautevilleHouse
end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean