import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapSignature where
  baseSpace : Type u
  topology : TopologicalSpace baseSpace
  measure : Type v
  gapParameter : ℝ
  densityFunction : baseSpace → ℝ

structure DensityGapAdmittedObject where
  signature : DensityGapSignature
  compactSupport : Prop
  upperDensityBound : ℝ
  lowerDensityBound : ℝ
  gapCondition : upperDensityBound - lowerDensityBound ≤ signature.gapParameter
  conclusion : gapCondition

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
