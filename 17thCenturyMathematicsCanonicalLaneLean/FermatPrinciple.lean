import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure FermatPrinciplePackage where
  lightPathExtremal : Prop
  refractionLaw : Prop
  variationalFormulation : Prop

structure FermatPrincipleEvidence (F : FermatPrinciplePackage) where
  lightPathExtremalClosed : F.lightPathExtremal
  refractionLawClosed : F.refractionLaw
  variationalFormulationClosed : F.variationalFormulation

def FermatPrincipleClosed (F : FermatPrinciplePackage) : Prop :=
  F.lightPathExtremal ∧ F.refractionLaw ∧ F.variationalFormulation

theorem fermat_principle_closed_from_evidence (F : FermatPrinciplePackage) (E : FermatPrincipleEvidence F) :
    FermatPrincipleClosed F := by
  exact And.intro E.lightPathExtremalClosed (And.intro E.refractionLawClosed E.variationalFormulationClosed)

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse