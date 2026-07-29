import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomWalkHeatKernelPackage where
  transitionKernel : Type u
  heatKernelEstimate : Prop
  gaussianUpperBound : Prop
  parabolicHarnackInequality : Prop

structure RandomWalkHeatKernelEvidence (R : RandomWalkHeatKernelPackage) where
  heatKernelEstimateClosed : R.heatKernelEstimate
  gaussianUpperBoundClosed : R.gaussianUpperBound
  parabolicHarnackInequalityClosed : R.parabolicHarnackInequality

def RandomWalkHeatKernelClosed (R : RandomWalkHeatKernelPackage) : Prop :=
  R.heatKernelEstimate ∧ R.gaussianUpperBound ∧ R.parabolicHarnackInequality

theorem random_walk_heat_kernel_closed_from_evidence
    (R : RandomWalkHeatKernelPackage) (E : RandomWalkHeatKernelEvidence R) :
    RandomWalkHeatKernelClosed R := by
  exact And.intro E.heatKernelEstimateClosed
    (And.intro E.gaussianUpperBoundClosed E.parabolicHarnackInequalityClosed)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse