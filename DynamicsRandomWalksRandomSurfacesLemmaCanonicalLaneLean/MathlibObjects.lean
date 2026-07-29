import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure DRWRSAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  randomWalkStep : carrier → Set carrier
  surfaceLaw : carrier → ℝ
  rwClosed : Prop
  surfaceRegular : Prop
  conclusion : rwClosed ∧ surfaceRegular

def DRWRSWitnessClosed (O : DRWRSAdmittedObject) : Prop :=
  O.rwClosed ∧ O.surfaceRegular

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse