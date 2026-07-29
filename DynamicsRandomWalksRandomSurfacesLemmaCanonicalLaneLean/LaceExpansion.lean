import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure LaceExpansionPackage where
  laceExpansionSeries : Type u
  convergenceRadius : Prop
  criticalExponent : Prop
  meanFieldBounds : Prop

structure LaceExpansionEvidence (L : LaceExpansionPackage) where
  convergenceRadiusClosed : L.convergenceRadius
  criticalExponentClosed : L.criticalExponent
  meanFieldBoundsClosed : L.meanFieldBounds

def LaceExpansionClosed (L : LaceExpansionPackage) : Prop :=
  L.convergenceRadius ∧ L.criticalExponent ∧ L.meanFieldBounds

theorem lace_expansion_closed_from_evidence
    (L : LaceExpansionPackage) (E : LaceExpansionEvidence L) :
    LaceExpansionClosed L := by
  exact And.intro E.convergenceRadiusClosed
    (And.intro E.criticalExponentClosed E.meanFieldBoundsClosed)

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse