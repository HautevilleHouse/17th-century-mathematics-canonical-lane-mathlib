import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure CartesianCoordinatesPackage where
  originDefined : Prop
  axesPerpendicular : Prop
  coordinateRepresentation : Prop

structure CartesianCoordinatesEvidence (C : CartesianCoordinatesPackage) where
  originDefinedClosed : C.originDefined
  axesPerpendicularClosed : C.axesPerpendicular
  coordinateRepresentationClosed : C.coordinateRepresentation

def CartesianCoordinatesClosed (C : CartesianCoordinatesPackage) : Prop :=
  C.originDefined ∧ C.axesPerpendicular ∧ C.coordinateRepresentation

theorem cartesian_coordinates_closed_from_evidence (C : CartesianCoordinatesPackage) (E : CartesianCoordinatesEvidence C) :
    CartesianCoordinatesClosed C := by
  exact And.intro E.originDefinedClosed (And.intro E.axesPerpendicularClosed E.coordinateRepresentationClosed)

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse