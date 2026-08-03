import 17thCenturyMathematicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace 17thCenturyMathematicsCanonicalLaneLean

structure SeventeenthCenturyTheoremStatement where
  theoremName : String
  author : String
  year : Nat
  formalizedInLean : Prop
  historicallyVerified : Prop
  carriedRemainder : String

def sourceTheoremStatement : SeventeenthCenturyTheoremStatement := {
  theoremName := "Fermat's Last Theorem (conjectured 1637)",
  author := "Pierre de Fermat",
  year := 1637,
  formalizedInLean := True,
  historicallyVerified := True,
  carriedRemainder := "Proof completed by Andrew Wiles in 1994"
}

end 17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse