import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : PredationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PredationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
