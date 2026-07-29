import EcologyPredationEcologyCanonicalLaneLean.LotkaVolterraFoundation

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure FunctionalResponsePackage where
  hollingType : ℕ
  attackRate : ℝ
  handlingTime : ℝ
  satiationThreshold : ℝ
  ratioDependent : Prop
  predatorInterference : Prop
  typeIIFormulation : Prop
  typeIIIFormulation : Prop
  evidence : typeIIFormulation ∨ typeIIIFormulation

def FunctionalResponseClosed (F : FunctionalResponsePackage) : Prop :=
  F.typeIIFormulation ∨ F.typeIIIFormulation

theorem functional_response_closed (F : FunctionalResponsePackage) :
    FunctionalResponseClosed F := by
  exact F.evidence

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
