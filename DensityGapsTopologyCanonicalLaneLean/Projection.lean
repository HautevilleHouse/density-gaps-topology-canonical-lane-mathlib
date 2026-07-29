import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DensityGapEndgameState where
  object : AdmissibleClass

def densityGapProjection : Projection DensityGapEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem density_gap_projection_idempotent (x : DensityGapEndgameState) :
    densityGapProjection.toFun (densityGapProjection.toFun x) = densityGapProjection.toFun x := by
  exact densityGapProjection.idempotent x

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
