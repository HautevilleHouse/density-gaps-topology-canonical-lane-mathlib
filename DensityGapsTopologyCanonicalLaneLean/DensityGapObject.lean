import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DensityGapAdmittedObject where
  space : DensityGapSpace
  denseSubset : Set (space.carrier)
  gapProperty : Prop
  conclusion : gapProperty

def DensityGapWitnessClosed (O : DensityGapAdmittedObject) : Prop :=
  O.gapProperty

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
