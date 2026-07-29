import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPredationEcologyCanonicalLaneLean.LotkaVolterraDynamics

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure StabilityAnalysisPackage
    {P : PredatorPreyPopulationPackage}
    (D : LotkaVolterraDynamicsPackage P) where
  localStabilityCriteria : Prop
  globalStabilityConditions : Prop
  bifurcationThresholds : Prop

structure StabilityAnalysisEvidence
    {P : PredatorPreyPopulationPackage}
    {D : LotkaVolterraDynamicsPackage P}
    (S : StabilityAnalysisPackage D) where
  localStabilityCriteriaClosed : S.localStabilityCriteria
  globalStabilityConditionsClosed : S.globalStabilityConditions
  bifurcationThresholdsClosed : S.bifurcationThresholds

def StabilityAnalysisClosed
    {P : PredatorPreyPopulationPackage}
    {D : LotkaVolterraDynamicsPackage P}
    (S : StabilityAnalysisPackage D) : Prop :=
  S.localStabilityCriteria ∧ S.globalStabilityConditions ∧ S.bifurcationThresholds

theorem stability_analysis_closed_from_evidence
    {P : PredatorPreyPopulationPackage}
    {D : LotkaVolterraDynamicsPackage P}
    (S : StabilityAnalysisPackage D)
    (E : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S := by
  exact And.intro E.localStabilityCriteriaClosed
    (And.intro E.globalStabilityConditionsClosed E.bifurcationThresholdsClosed)

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse