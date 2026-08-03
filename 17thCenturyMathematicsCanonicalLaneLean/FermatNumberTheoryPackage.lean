import HautevilleHouse.17thCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace 17thCenturyMathematicsCanonicalLaneLean

structure FermatNumberTheoryPackage where
  lastTheoremStatement : Prop
  infiniteDescentMethod : Prop
  modularArithmetic : Prop
  primeFactorization : Prop

structure FermatNumberTheoryEvidence (F : FermatNumberTheoryPackage) where
  lastTheoremStatementClosed : F.lastTheoremStatement
  infiniteDescentMethodClosed : F.infiniteDescentMethod
  modularArithmeticClosed : F.modularArithmetic
  primeFactorizationClosed : F.primeFactorization

def FermatNumberTheoryClosed (F : FermatNumberTheoryPackage) : Prop :=
  F.lastTheoremStatement ∧ F.infiniteDescentMethod ∧ F.modularArithmetic ∧ F.primeFactorization

theorem fermat_number_theory_closed_from_evidence (F : FermatNumberTheoryPackage) (E : FermatNumberTheoryEvidence F) :
    FermatNumberTheoryClosed F := by
  exact And.intro E.lastTheoremStatementClosed (And.intro E.infiniteDescentMethodClosed (And.intro E.modularArithmeticClosed E.primeFactorizationClosed))

end 17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse
