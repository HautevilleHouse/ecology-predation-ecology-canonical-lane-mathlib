import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure PredatorPreyStabilityPackage (L : LotkaVolterraPackage) where
  linearizationMatrix : ℝ → ℝ → ℝ × ℝ × ℝ × ℝ
  jacobianAtEquilibrium : Prop
  eigenvalues : ℂ × ℂ
  stabilityCondition : Prop
  preyStable : Prop
  predatorStable : Prop

structure PredatorPreyStabilityEvidence {L : LotkaVolterraPackage} (S : PredatorPreyStabilityPackage L) where
  jacobianAtEquilibriumClosed : S.jacobianAtEquilibrium
  stabilityConditionClosed : S.stabilityCondition
  preyStableClosed : S.preyStable
  predatorStableClosed : S.predatorStable

def PredatorPreyStabilityClosed {L : LotkaVolterraPackage} (S : PredatorPreyStabilityPackage L) : Prop :=
  S.jacobianAtEquilibrium ∧ S.stabilityCondition ∧ S.preyStable ∧ S.predatorStable

theorem predator_prey_stability_closed_from_evidence {L : LotkaVolterraPackage} (S : PredatorPreyStabilityPackage L) (E : PredatorPreyStabilityEvidence S) : PredatorPreyStabilityClosed S := by
  exact And.intro E.jacobianAtEquilibriumClosed (And.intro E.stabilityConditionClosed (And.intro E.preyStableClosed E.predatorStableClosed))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
