import HautevilleHouse.SeventeenthCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace SeventeenthCenturyMathematicsCanonicalLaneLean

structure AnalyticGeometryPackage where
  coordinateSystemDefined : Prop
  conicSectionClassification : Prop
  algebraicCurvesAnalyzed : Prop

structure AnalyticGeometryEvidence (G : AnalyticGeometryPackage) where
  coordinateSystemDefinedClosed : G.coordinateSystemDefined
  conicSectionClassificationClosed : G.conicSectionClassification
  algebraicCurvesAnalyzedClosed : G.algebraicCurvesAnalyzed

def AnalyticGeometryClosed (G : AnalyticGeometryPackage) : Prop :=
  G.coordinateSystemDefined ∧ G.conicSectionClassification ∧ G.algebraicCurvesAnalyzed

theorem analytic_geometry_closed_from_evidence (G : AnalyticGeometryPackage)
    (E : AnalyticGeometryEvidence G) : AnalyticGeometryClosed G := by
  exact And.intro E.coordinateSystemDefinedClosed
    (And.intro E.conicSectionClassificationClosed E.algebraicCurvesAnalyzedClosed)

end SeventeenthCenturyMathematicsCanonicalLaneLean
end HautevilleHouse