import EcologyPredationEcologyCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure LotkaVolterraPackage (G : RiemannianCurvaturePackage) where
  timeParameter : Type u
  preyDensity : timeParameter → Type v
  predatorDensity : timeParameter → Type w
  initialPrey : Prop
  initialPredator : Prop
  preyGrowthRate : Prop
  predationRate : Prop
  conversionEfficiency : Prop
  predatorMortality : Prop
  coupledODEs : Prop

structure LotkaVolterraEvidence {G : RiemannianCurvaturePackage}
    (F : LotkaVolterraPackage G) where
  initialPreyClosed : F.initialPrey
  initialPredatorClosed : F.initialPredator
  preyGrowthRateClosed : F.preyGrowthRate
  predationRateClosed : F.predationRate
  conversionEfficiencyClosed : F.conversionEfficiency
  predatorMortalityClosed : F.predatorMortality
  coupledODEsClosed : F.coupledODEs

def LotkaVolterraClosed {G : RiemannianCurvaturePackage}
    (F : LotkaVolterraPackage G) : Prop :=
  F.initialPrey ∧ F.initialPredator ∧
  F.preyGrowthRate ∧ F.predationRate ∧
  F.conversionEfficiency ∧ F.predatorMortality ∧
  F.coupledODEs

theorem lotka_volterra_closed_from_evidence
    {G : RiemannianCurvaturePackage} (F : LotkaVolterraPackage G)
    (E : LotkaVolterraEvidence F) : LotkaVolterraClosed F := by
  exact And.intro E.initialPreyClosed
    (And.intro E.initialPredatorClosed
      (And.intro E.preyGrowthRateClosed
        (And.intro E.predationRateClosed
          (And.intro E.conversionEfficiencyClosed
            (And.intro E.predatorMortalityClosed E.coupledODEsClosed)))))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse