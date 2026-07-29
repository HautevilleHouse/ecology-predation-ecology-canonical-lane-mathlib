import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure PredatorPreyInteractionPackage where
  preyGrowthRate : Prop
  predationRate : Prop
  conversionEfficiency : Prop
  predatorMortality : Prop
  couplingEquations : Prop

structure PredatorPreyInteractionEvidence (P : PredatorPreyInteractionPackage) where
  preyGrowthRateClosed : P.preyGrowthRate
  predationRateClosed : P.predationRate
  conversionEfficiencyClosed : P.conversionEfficiency
  predatorMortalityClosed : P.predatorMortality
  couplingEquationsClosed : P.couplingEquations

def PredatorPreyInteractionClosed (P : PredatorPreyInteractionPackage) : Prop :=
  P.preyGrowthRate ∧ P.predationRate ∧ P.conversionEfficiency ∧ P.predatorMortality ∧ P.couplingEquations

theorem predator_prey_interaction_closed_from_evidence
    (P : PredatorPreyInteractionPackage) (E : PredatorPreyInteractionEvidence P) :
    PredatorPreyInteractionClosed P := by
  exact And.intro E.preyGrowthRateClosed
    (And.intro E.predationRateClosed
      (And.intro E.conversionEfficiencyClosed
        (And.intro E.predatorMortalityClosed E.couplingEquationsClosed)))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
