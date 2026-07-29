import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure FunctionalResponsePackage where
  typeIResponse : Prop
  typeIIResponse : Prop
  typeIIIResponse : Prop
  handlingTime : Prop
  attackRate : Prop

structure FunctionalResponseEvidence (F : FunctionalResponsePackage) where
  typeIResponseClosed : F.typeIResponse
  typeIIResponseClosed : F.typeIIResponse
  typeIIIResponseClosed : F.typeIIIResponse
  handlingTimeClosed : F.handlingTime
  attackRateClosed : F.attackRate

def FunctionalResponseClosed (F : FunctionalResponsePackage) : Prop :=
  F.typeIResponse ∧ F.typeIIResponse ∧ F.typeIIIResponse ∧ F.handlingTime ∧ F.attackRate

theorem functional_response_closed_from_evidence (F : FunctionalResponsePackage) (E : FunctionalResponseEvidence F) : FunctionalResponseClosed F := by
  exact And.intro E.typeIResponseClosed (And.intro E.typeIIResponseClosed (And.intro E.typeIIIResponseClosed (And.intro E.handlingTimeClosed E.attackRateClosed)))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse