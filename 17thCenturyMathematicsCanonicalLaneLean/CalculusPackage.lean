import _17thCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure CalculusPackage where
  fluxionMethod : Prop
  infinitesimalCalculus : Prop
  fundamentalTheorem : Prop
  notationLeibniz : Prop

structure CalculusEvidence (C : CalculusPackage) where
  fluxionMethodClosed : C.fluxionMethod
  infinitesimalCalculusClosed : C.infinitesimalCalculus
  fundamentalTheoremClosed : C.fundamentalTheorem
  notationLeibnizClosed : C.notationLeibniz

def CalculusClosed (C : CalculusPackage) : Prop :=
  C.fluxionMethod ∧ C.infinitesimalCalculus ∧ C.fundamentalTheorem ∧ C.notationLeibniz

theorem calculus_closed_from_evidence (C : CalculusPackage) (E : CalculusEvidence C) :
    CalculusClosed C := by
  exact And.intro E.fluxionMethodClosed
    (And.intro E.infinitesimalCalculusClosed
      (And.intro E.fundamentalTheoremClosed E.notationLeibnizClosed))

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse
