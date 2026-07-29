import EcologyPredationEcologyCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace EcologyPredationEcologyCanonicalLaneLean

structure PredationModel where
  species : Type u
  predatorDensity : species → ℝ
  preyDensity : species → ℝ
  predationRate : ℝ
  preyGrowthRate : ℝ
  carryingCapacity : ℝ
  functionalResponse : ℝ → ℝ → ℝ
  numericalResponse : ℝ → ℝ → ℝ
  dynamicsContinuous : Prop
  equilibriumExists : Prop
  dynamicStability : Prop

end EcologyPredationEcologyCanonicalLaneLean
end HautevilleHouse
