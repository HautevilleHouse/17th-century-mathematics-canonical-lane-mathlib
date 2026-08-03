import HautevilleHouse.SeventeenthCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace SeventeenthCenturyMathematicsCanonicalLaneLean

structure CalculusFoundationsPackage where
  derivativeDefined : Prop
  integralDefined : Prop
  fundamentalTheorem : Prop

structure CalculusFoundationsEvidence (C : CalculusFoundationsPackage) where
  derivativeDefinedClosed : C.derivativeDefined
  integralDefinedClosed : C.integralDefined
  fundamentalTheoremClosed : C.fundamentalTheorem

def CalculusFoundationsClosed (C : CalculusFoundationsPackage) : Prop :=
  C.derivativeDefined ∧ C.integralDefined ∧ C.fundamentalTheorem

theorem calculus_foundations_closed_from_evidence (C : CalculusFoundationsPackage)
    (E : CalculusFoundationsEvidence C) : CalculusFoundationsClosed C := by
  exact And.intro E.derivativeDefinedClosed
    (And.intro E.integralDefinedClosed E.fundamentalTheoremClosed)

end SeventeenthCenturyMathematicsCanonicalLaneLean
end HautevilleHouse