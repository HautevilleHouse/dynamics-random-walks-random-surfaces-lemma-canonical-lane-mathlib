import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.ProbabilityMassFunction

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomWalkTransitionKernel (S : Type u) where
  stepDistribution : S → PMF S
  transitionConsistent : Prop
  kernelClosed : Prop

structure RandomWalkTransitionKernelEvidence (S : Type u) (K : RandomWalkTransitionKernel S) where
  transitionConsistentClosed : K.transitionConsistent
  kernelClosedClosed : K.kernelClosed

def RandomWalkTransitionKernelClosed (S : Type u) (K : RandomWalkTransitionKernel S) : Prop :=
  K.transitionConsistent ∧ K.kernelClosed

theorem random_walk_transition_kernel_closed_from_evidence
    (S : Type u) (K : RandomWalkTransitionKernel S)
    (E : RandomWalkTransitionKernelEvidence S K) : RandomWalkTransitionKernelClosed S K := by
  exact And.intro E.transitionConsistentClosed E.kernelClosedClosed

end HautevilleHouse
end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean