import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPredationEcologyCanonicalLaneLean.PredatorPreyPopulationModels

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure FunctionalResponsePackage
    (P : PredatorPreyPopulationPackage) where
  hollingTypeI : Prop
  hollingTypeII : Prop
  hollingTypeIII : Prop
  attackRate : Prop
  handlingTime : Prop

structure FunctionalResponseEvidence
    {P : PredatorPreyPopulationPackage}
    (F : FunctionalResponsePackage P) where
  hollingTypeIClosed : F.hollingTypeI
  hollingTypeIIClosed : F.hollingTypeII
  hollingTypeIIIClosed : F.hollingTypeIII
  attackRateClosed : F.attackRate
  handlingTimeClosed : F.handlingTime

def FunctionalResponseClosed
    {P : PredatorPreyPopulationPackage}
    (F : FunctionalResponsePackage P) : Prop :=
  F.hollingTypeI ∧ F.hollingTypeII ∧ F.hollingTypeIII ∧
  F.attackRate ∧ F.handlingTime

theorem functional_response_closed_from_evidence
    {P : PredatorPreyPopulationPackage}
    (F : FunctionalResponsePackage P)
    (E : FunctionalResponseEvidence F) : FunctionalResponseClosed F := by
  exact And.intro E.hollingTypeIClosed
    (And.intro E.hollingTypeIIClosed
      (And.intro E.hollingTypeIIIClosed
        (And.intro E.attackRateClosed E.handlingTimeClosed)))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse