import DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosedFromAdmitted A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse