import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapSet where
  carrier : Type u
  topology : TopologicalSpace carrier
  denseSubset : Set carrier
  gapComplement : Set carrier
  dense : Dense denseSubset
  gapOpen : IsOpen gapComplement
  gapDisjoint : denseSubset ∩ gapComplement = ∅

def gapMeasure (D : DensityGapSet) : ℝ := 0

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse