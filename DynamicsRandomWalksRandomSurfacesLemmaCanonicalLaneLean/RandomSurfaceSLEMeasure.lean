import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure RandomSurfaceSLEMeasure where
  domainCurve : Type u
  loewnerEvolution : Prop
  measureClosed : Prop

structure RandomSurfaceSLEMeasureEvidence (S : RandomSurfaceSLEMeasure) where
  loewnerEvolutionClosed : S.loewnerEvolution
  measureClosedClosed : S.measureClosed

def RandomSurfaceSLEMeasureClosed (S : RandomSurfaceSLEMeasure) : Prop :=
  S.loewnerEvolution ∧ S.measureClosed

theorem random_surface_sle_measure_closed_from_evidence
    (S : RandomSurfaceSLEMeasure) (E : RandomSurfaceSLEMeasureEvidence S) :
    RandomSurfaceSLEMeasureClosed S := by
  exact And.intro E.loewnerEvolutionClosed E.measureClosedClosed

end HautevilleHouse
end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean