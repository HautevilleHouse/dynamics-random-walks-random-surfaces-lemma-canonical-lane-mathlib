import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomSurfaceScalingPackage where
  scalingLimit : Type u
  scalingExponent : Prop
  fractalDimension : Prop
  conformalInvariance : Prop

structure RandomSurfaceScalingEvidence (S : RandomSurfaceScalingPackage) where
  scalingExponentClosed : S.scalingExponent
  fractalDimensionClosed : S.fractalDimension
  conformalInvarianceClosed : S.conformalInvariance

def RandomSurfaceScalingClosed (S : RandomSurfaceScalingPackage) : Prop :=
  S.scalingExponent ∧ S.fractalDimension ∧ S.conformalInvariance

theorem random_surface_scaling_closed_from_evidence
    (S : RandomSurfaceScalingPackage) (E : RandomSurfaceScalingEvidence S) :
    RandomSurfaceScalingClosed S := by
  exact And.intro E.scalingExponentClosed
    (And.intro E.fractalDimensionClosed E.conformalInvarianceClosed)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse