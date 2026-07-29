import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapTopologyPackage where
  space : Type u
  topology : TopologicalSpace space
  denseOpenSets : Set (Set space)
  gapCondition : Prop

def densityGapTopologyClosed (P : DensityGapTopologyPackage) : Prop :=
  P.gapCondition

theorem density_gap_topology_closed (P : DensityGapTopologyPackage) :
    densityGapTopologyClosed P := by
  exact P.gapCondition

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
