import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure PredatorPreyPopulationPackage where
  preyGrowthRate : Prop
  predationRate : Prop
  predatorEfficiency : Prop
  carryingCapacity : Prop

structure PredatorPreyPopulationEvidence (P : PredatorPreyPopulationPackage) where
  preyGrowthRateClosed : P.preyGrowthRate
  predationRateClosed : P.predationRate
  predatorEfficiencyClosed : P.predatorEfficiency
  carryingCapacityClosed : P.carryingCapacity

def PredatorPreyPopulationClosed (P : PredatorPreyPopulationPackage) : Prop :=
  P.preyGrowthRate ∧ P.predationRate ∧ P.predatorEfficiency ∧ P.carryingCapacity

theorem predator_prey_population_closed_from_evidence (P : PredatorPreyPopulationPackage)
    (E : PredatorPreyPopulationEvidence P) : PredatorPreyPopulationClosed P := by
  exact And.intro E.preyGrowthRateClosed
    (And.intro E.predationRateClosed
      (And.intro E.predatorEfficiencyClosed E.carryingCapacityClosed))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse