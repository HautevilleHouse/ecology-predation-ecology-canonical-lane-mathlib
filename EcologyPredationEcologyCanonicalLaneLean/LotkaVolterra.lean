import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure LotkaVolterraPackage where
  preyGrowthRate : ℝ
  predationRate : ℝ
  predatorEfficiency : ℝ
  predatorDeathRate : ℝ
  equilibriumDefined : Prop
  equilibriumPrey : ℝ
  equilibriumPredator : ℝ

structure LotkaVolterraEvidence (L : LotkaVolterraPackage) where
  equilibriumDefinedClosed : L.equilibriumDefined
  equilibriumPositive : L.equilibriumPrey > 0 ∧ L.equilibriumPredator > 0

def LotkaVolterraClosed (L : LotkaVolterraPackage) : Prop :=
  L.equilibriumDefined ∧ L.equilibriumPrey > 0 ∧ L.equilibriumPredator > 0

theorem lotka_volterra_closed_from_evidence (L : LotkaVolterraPackage) (E : LotkaVolterraEvidence L) : LotkaVolterraClosed L := by
  exact And.intro E.equilibriumDefinedClosed E.equilibriumPositive

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
