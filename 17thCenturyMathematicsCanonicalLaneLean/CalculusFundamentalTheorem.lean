import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure FundamentalTheoremOfCalculusPackage where
  antiderivativeExists : Prop
  evaluationTheorem : Prop
  integralDefined : Prop

structure FundamentalTheoremOfCalculusEvidence (F : FundamentalTheoremOfCalculusPackage) where
  antiderivativeExistsClosed : F.antiderivativeExists
  evaluationTheoremClosed : F.evaluationTheorem
  integralDefinedClosed : F.integralDefined

def FundamentalTheoremOfCalculusClosed (F : FundamentalTheoremOfCalculusPackage) : Prop :=
  F.antiderivativeExists ∧ F.evaluationTheorem ∧ F.integralDefined

theorem fundamental_theorem_of_calculus_closed_from_evidence (F : FundamentalTheoremOfCalculusPackage) (E : FundamentalTheoremOfCalculusEvidence F) :
    FundamentalTheoremOfCalculusClosed F := by
  exact And.intro E.antiderivativeExistsClosed (And.intro E.evaluationTheoremClosed E.integralDefinedClosed)

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse