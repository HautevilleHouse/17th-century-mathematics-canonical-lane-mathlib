import _17thCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure MechanicsPackage where
  lawOfInertia : Prop
  lawOfAcceleration : Prop
  lawOfActionReaction : Prop
  universalGravitation : Prop

structure MechanicsEvidence (M : MechanicsPackage) where
  lawOfInertiaClosed : M.lawOfInertia
  lawOfAccelerationClosed : M.lawOfAcceleration
  lawOfActionReactionClosed : M.lawOfActionReaction
  universalGravitationClosed : M.universalGravitation

def MechanicsClosed (M : MechanicsPackage) : Prop :=
  M.lawOfInertia ∧ M.lawOfAcceleration ∧ M.lawOfActionReaction ∧ M.universalGravitation

theorem mechanics_closed_from_evidence (M : MechanicsPackage) (E : MechanicsEvidence M) :
    MechanicsClosed M := by
  exact And.intro E.lawOfInertiaClosed
    (And.intro E.lawOfAccelerationClosed
      (And.intro E.lawOfActionReactionClosed E.universalGravitationClosed))

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse
