import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure LotkaVolterraSystem (P : PredatorPreyPopulationPackage) where
  preyDiffEquation : Prop
  predatorDiffEquation : Prop
  equilibriumPoints : Prop
  phasePlaneAnalysis : Prop
  conservedQuantity : Prop

structure LotkaVolterraEvidence {P : PredatorPreyPopulationPackage} (L : LotkaVolterraSystem P) where
  preyDiffEquationClosed : L.preyDiffEquation
  predatorDiffEquationClosed : L.predatorDiffEquation
  equilibriumPointsClosed : L.equilibriumPoints
  phasePlaneAnalysisClosed : L.phasePlaneAnalysis
  conservedQuantityClosed : L.conservedQuantity

def LotkaVolterraClosed {P : PredatorPreyPopulationPackage} (L : LotkaVolterraSystem P) : Prop :=
  L.preyDiffEquation ∧ L.predatorDiffEquation ∧ L.equilibriumPoints ∧ L.phasePlaneAnalysis ∧ L.conservedQuantity

theorem lotka_volterra_closed_from_evidence {P : PredatorPreyPopulationPackage} (L : LotkaVolterraSystem P) (E : LotkaVolterraEvidence L) : LotkaVolterraClosed L := by
  exact And.intro E.preyDiffEquationClosed (And.intro E.predatorDiffEquationClosed (And.intro E.equilibriumPointsClosed (And.intro E.phasePlaneAnalysisClosed E.conservedQuantityClosed)))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse