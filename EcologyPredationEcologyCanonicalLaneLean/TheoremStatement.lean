import HautevilleHouse.EcologyPredationEcologyCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure EcologySystem where
  prey : Type
  predator : Type
  predationRate : ℚ
  carryingCapacity : ℚ
  conclusion : equilibriumClosed

definition EcologySystemClosed (sys : EcologySystem) : Prop :=
  sys.equilibriumClosed

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse