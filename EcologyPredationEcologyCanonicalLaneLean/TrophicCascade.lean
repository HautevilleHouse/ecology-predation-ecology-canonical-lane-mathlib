import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPredationEcologyCanonicalLaneLean.FunctionalResponse

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure TrophicCascadePackage {F : FunctionalResponsePackage}
    (E : FunctionalResponseEvidence F) where
  topPredator : Prop
  mesopredator : Prop
  basalPrey : Prop
  cascadeStrength : Prop
  ecosystemStability : Prop

structure TrophicCascadeEvidence {F : FunctionalResponsePackage}
    {E : FunctionalResponseEvidence F} (T : TrophicCascadePackage E) where
  topPredatorClosed : T.topPredator
  mesopredatorClosed : T.mesopredator
  basalPreyClosed : T.basalPrey
  cascadeStrengthClosed : T.cascadeStrength
  ecosystemStabilityClosed : T.ecosystemStability

def TrophicCascadeClosed {F : FunctionalResponsePackage}
    {E : FunctionalResponseEvidence F} (T : TrophicCascadePackage E) : Prop :=
  T.topPredator ∧ T.mesopredator ∧ T.basalPrey ∧ T.cascadeStrength ∧ T.ecosystemStability

theorem trophic_cascade_closed_from_evidence
    {F : FunctionalResponsePackage} {E : FunctionalResponseEvidence F}
    (T : TrophicCascadePackage E) (Ev : TrophicCascadeEvidence T) :
    TrophicCascadeClosed T := by
  exact And.intro Ev.topPredatorClosed
    (And.intro Ev.mesopredatorClosed
      (And.intro Ev.basalPreyClosed
        (And.intro Ev.cascadeStrengthClosed Ev.ecosystemStabilityClosed)))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
