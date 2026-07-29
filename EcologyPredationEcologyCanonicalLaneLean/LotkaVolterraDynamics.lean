import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyPredationEcologyCanonicalLaneLean.PredatorPreyPopulationModels

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure LotkaVolterraDynamicsPackage
    (P : PredatorPreyPopulationPackage) where
  equilibriumExistence : Prop
  limitCycleStability : Prop
  parameterSensitivity : Prop

structure LotkaVolterraDynamicsEvidence
    {P : PredatorPreyPopulationPackage}
    (L : LotkaVolterraDynamicsPackage P) where
  equilibriumExistenceClosed : L.equilibriumExistence
  limitCycleStabilityClosed : L.limitCycleStability
  parameterSensitivityClosed : L.parameterSensitivity

def LotkaVolterraDynamicsClosed
    {P : PredatorPreyPopulationPackage}
    (L : LotkaVolterraDynamicsPackage P) : Prop :=
  L.equilibriumExistence ∧ L.limitCycleStability ∧ L.parameterSensitivity

theorem lotka_volterra_dynamics_closed_from_evidence
    {P : PredatorPreyPopulationPackage}
    (L : LotkaVolterraDynamicsPackage P)
    (E : LotkaVolterraDynamicsEvidence L) : LotkaVolterraDynamicsClosed L := by
  exact And.intro E.equilibriumExistenceClosed
    (And.intro E.limitCycleStabilityClosed E.parameterSensitivityClosed)

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse