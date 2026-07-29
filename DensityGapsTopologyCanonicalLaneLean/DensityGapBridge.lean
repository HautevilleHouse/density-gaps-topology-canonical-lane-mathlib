import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapBridge (A : AdmissibleClass) where
  gapFunction : A.object → A.object → ℝ
  positivity : ∀ x y, gapFunction x y > 0 → bridgeClosed A
  zeroCondition : ∀ x y, gapFunction x y = 0 → gateClosed A

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse