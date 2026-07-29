import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure AdmittedObject where
  witness : Prop
  conclusion : witness

def DynamicsRandomWalksRandomSurfacesLemmaWitnessClosed (O : AdmittedObject) : Prop :=
  O.witness

theorem theorem_statement (A : AdmissibleClass) :
    bridgeClosed A ∧ gateClosed A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse