import HautevilleHouse.17thCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace 17thCenturyMathematicsCanonicalLaneLean

structure InfiniteSeriesPackage where
  seriesConvergence : Prop
  sumFormula : Prop
  termwiseDifferentiability : Prop
  seriesRepresentation : Prop

structure InfiniteSeriesEvidence (S : InfiniteSeriesPackage) where
  seriesConvergenceClosed : S.seriesConvergence
  sumFormulaClosed : S.sumFormula
  termwiseDifferentiabilityClosed : S.termwiseDifferentiability
  seriesRepresentationClosed : S.seriesRepresentation

def InfiniteSeriesClosed (S : InfiniteSeriesPackage) : Prop :=
  S.seriesConvergence ∧ S.sumFormula ∧ S.termwiseDifferentiability ∧ S.seriesRepresentation

theorem infinite_series_closed_from_evidence (S : InfiniteSeriesPackage) (E : InfiniteSeriesEvidence S) :
    InfiniteSeriesClosed S := by
  exact And.intro E.seriesConvergenceClosed (And.intro E.sumFormulaClosed (And.intro E.termwiseDifferentiabilityClosed E.seriesRepresentationClosed))

end 17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse
