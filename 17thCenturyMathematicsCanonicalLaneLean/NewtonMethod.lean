import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure NewtonMethodPackage where
  iterativeConvergence : Prop
  quadraticConvergence : Prop
  derivativeRequired : Prop

structure NewtonMethodEvidence (N : NewtonMethodPackage) where
  iterativeConvergenceClosed : N.iterativeConvergence
  quadraticConvergenceClosed : N.quadraticConvergence
  derivativeRequiredClosed : N.derivativeRequired

def NewtonMethodClosed (N : NewtonMethodPackage) : Prop :=
  N.iterativeConvergence ∧ N.quadraticConvergence ∧ N.derivativeRequired

theorem newton_method_closed_from_evidence (N : NewtonMethodPackage) (E : NewtonMethodEvidence N) :
    NewtonMethodClosed N := by
  exact And.intro E.iterativeConvergenceClosed (And.intro E.quadraticConvergenceClosed E.derivativeRequiredClosed)

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse