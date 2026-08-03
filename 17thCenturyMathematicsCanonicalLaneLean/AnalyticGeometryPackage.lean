import HautevilleHouse.17thCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace 17thCenturyMathematicsCanonicalLaneLean

structure AnalyticGeometryPackage where
  coordinateSystemEstablished : Prop
  curveEquation : Prop
  algebraicMethod : Prop
  intersectionCount : Prop

structure AnalyticGeometryEvidence (G : AnalyticGeometryPackage) where
  coordinateSystemEstablishedClosed : G.coordinateSystemEstablished
  curveEquationClosed : G.curveEquation
  algebraicMethodClosed : G.algebraicMethod
  intersectionCountClosed : G.intersectionCount

def AnalyticGeometryClosed (G : AnalyticGeometryPackage) : Prop :=
  G.coordinateSystemEstablished ∧ G.curveEquation ∧ G.algebraicMethod ∧ G.intersectionCount

theorem analytic_geometry_closed_from_evidence (G : AnalyticGeometryPackage) (E : AnalyticGeometryEvidence G) :
    AnalyticGeometryClosed G := by
  exact And.intro E.coordinateSystemEstablishedClosed (And.intro E.curveEquationClosed (And.intro E.algebraicMethodClosed E.intersectionCountClosed))

end 17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse
