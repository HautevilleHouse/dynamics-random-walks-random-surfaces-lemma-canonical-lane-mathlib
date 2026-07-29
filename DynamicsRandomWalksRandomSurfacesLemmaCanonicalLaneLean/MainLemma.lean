import DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.RandomSurfacePackage
import DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.FinalTheorem

/-!
# Main Lemma: Random walks converge to random surfaces
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure MainLemmaPackage (A : AdmissibleClass) (R : RandomWalkPackage A) (S : RandomSurfacePackage A R) where
  walkToSurfaceMap : R.walkSpace → S.surface
  convergenceInDistribution : Prop
  rateOfConvergence : ℝ

theorem main_lemma_statement (A : AdmissibleClass) (R : RandomWalkPackage A) (S : RandomSurfacePackage A R)
    (M : MainLemmaPackage A R S) (hR : RandomWalkClosed A R) (hS : RandomSurfaceClosed A R S) :
    ConstrainedDynamicsClosure A := by
  apply constrained_dynamics_endgame A

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse