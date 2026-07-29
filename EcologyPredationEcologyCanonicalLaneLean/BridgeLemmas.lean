import EcologyPredationEcologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PredationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
