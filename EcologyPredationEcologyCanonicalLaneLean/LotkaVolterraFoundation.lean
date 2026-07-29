import EcologyPredationEcologyCanonicalLaneLean.PredationModel

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure LotkaVolterraFoundation where
  preyGrowthRate : ℝ
  predationRate : ℝ
  predatorDeathRate : ℝ
  conversionEfficiency : ℝ
  preyIsocline : Prop
  predatorIsocline : Prop
  oscillatoryDynamics : Prop
  meanFieldApproximation : Prop
  modelCalibration : Prop
  calibrationEvidence : modelCalibration

def LotkaVolterraClosed (L : LotkaVolterraFoundation) : Prop :=
  L.preyIsocline ∧ L.predatorIsocline ∧ L.oscillatoryDynamics ∧ L.meanFieldApproximation

theorem lotka_volterra_closed_from_evidence (L : LotkaVolterraFoundation) :
    LotkaVolterraClosed L := by
  exact And.intro L.preyIsocline (And.intro L.predatorIsocline (And.intro L.oscillatoryDynamics L.meanFieldApproximation))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
