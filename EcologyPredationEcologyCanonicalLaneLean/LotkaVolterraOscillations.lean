import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPredationEcologyCanonicalLaneLean.PredatorPreyDynamics

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure LotkaVolterraOscillationPackage {P : PredatorPreyInteractionPackage}
    (E : PredatorPreyInteractionEvidence P) where
  equilibriumPoint : Prop
  linearStability : Prop
  periodicOrbitExists : Prop
  conservationLaw : Prop

structure LotkaVolterraOscillationEvidence {P : PredatorPreyInteractionPackage}
    {E : PredatorPreyInteractionEvidence P} (L : LotkaVolterraOscillationPackage E) where
  equilibriumPointClosed : L.equilibriumPoint
  linearStabilityClosed : L.linearStability
  periodicOrbitExistsClosed : L.periodicOrbitExists
  conservationLawClosed : L.conservationLaw

def LotkaVolterraOscillationClosed {P : PredatorPreyInteractionPackage}
    {E : PredatorPreyInteractionEvidence P} (L : LotkaVolterraOscillationPackage E) : Prop :=
  L.equilibriumPoint ∧ L.linearStability ∧ L.periodicOrbitExists ∧ L.conservationLaw

theorem lotka_volterra_oscillation_closed_from_evidence
    {P : PredatorPreyInteractionPackage} {E : PredatorPreyInteractionEvidence P}
    (L : LotkaVolterraOscillationPackage E) (Ev : LotkaVolterraOscillationEvidence L) :
    LotkaVolterraOscillationClosed L := by
  exact And.intro Ev.equilibriumPointClosed
    (And.intro Ev.linearStabilityClosed
      (And.intro Ev.periodicOrbitExistsClosed Ev.conservationLawClosed))

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
