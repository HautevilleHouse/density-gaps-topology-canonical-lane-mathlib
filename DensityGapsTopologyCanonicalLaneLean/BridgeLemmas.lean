import DensityGapsTopologyCanonicalLaneLean.DensityGapsPackages

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | DensityGapAdmittedObject.mk sig _ _ _ _ => sig.gapCondition

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  match A.object with
  | DensityGapAdmittedObject.mk _ _ _ _ h => exact h

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
