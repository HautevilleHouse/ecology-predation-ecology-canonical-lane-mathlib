import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure PredatorPreyPopulationPackage where
  preyPopulation : Type u
  predatorPopulation : Type v
  preyGrowthRate : Prop
  predationRate : Prop
  conversionEfficiency : Prop
  predatorMortalityRate : Prop
  initialConditions : Prop

structure PredatorPreyPopulationEvidence (P : PredatorPreyPopulationPackage) where
  preyGrowthRateClosed : P.preyGrowthRate
  predationRateClosed : P.predationRate
  conversionEfficiencyClosed : P.conversionEfficiency
  predatorMortalityRateClosed : P.predatorMortalityRate
  initialConditionsClosed : P.initialConditions

def PredatorPreyPopulationClosed (P : PredatorPreyPopulationPackage) : Prop :=
  P.preyGrowthRate ∧ P.predationRate ∧ P.conversionEfficiency ∧ P.predatorMortalityRate ∧ P.initialConditions

theorem predator_prey_population_closed_from_evidence (P : PredatorPreyPopulationPackage) (E : PredatorPreyPopulationEvidence P) : PredatorPreyPopulationClosed P := by
  exact And.intro E.preyGrowthRateClosed (And.intro E.predationRateClosed (And.intro E.conversionEfficiencyClosed (And.intro E.predatorMortalityRateClosed E.initialConditionsClosed)))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse