import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean

structure KardarParisiZhangEquation where
  dimension : ℕ
  nonlinearTerm : Prop
  stochasticForcing : Prop
  wellPosedness : Prop
  stationaryMeasure : Prop

structure KardarParisiZhangEquationEvidence (K : KardarParisiZhangEquation) where
  wellPosednessClosed : K.wellPosedness
  stationaryMeasureClosed : K.stationaryMeasure

def KardarParisiZhangEquationClosed (K : KardarParisiZhangEquation) : Prop :=
  K.wellPosedness ∧ K.stationaryMeasure

theorem kardar_parisi_zhang_equation_closed_from_evidence (K : KardarParisiZhangEquation) (E : KardarParisiZhangEquationEvidence K) : KardarParisiZhangEquationClosed K := by
  exact And.intro E.wellPosednessClosed E.stationaryMeasureClosed

end DynamicsRandomWalksRandomSurfacesLemmaCanonicalLaneLean
end HautevilleHouse