import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure FunctionalResponsePackage where
  preyDensity : Prop
  predatorSearchEfficiency : Prop
  handlingTime : Prop
  attackCurveType : Prop
  responseFunctionType : String

structure FunctionalResponseEvidence (F : FunctionalResponsePackage) where
  preyDensityClosed : F.preyDensity
  predatorSearchEfficiencyClosed : F.predatorSearchEfficiency
  handlingTimeClosed : F.handlingTime
  attackCurveTypeClosed : F.attackCurveType

def FunctionalResponseClosed (F : FunctionalResponsePackage) : Prop :=
  F.preyDensity ∧ F.predatorSearchEfficiency ∧ F.handlingTime ∧ F.attackCurveType

theorem functional_response_closed_from_evidence
    (F : FunctionalResponsePackage) (E : FunctionalResponseEvidence F) :
    FunctionalResponseClosed F := by
  exact And.intro E.preyDensityClosed
    (And.intro E.predatorSearchEfficiencyClosed
      (And.intro E.handlingTimeClosed E.attackCurveTypeClosed))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
