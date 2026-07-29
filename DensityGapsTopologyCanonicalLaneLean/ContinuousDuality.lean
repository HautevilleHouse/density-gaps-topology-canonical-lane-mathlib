import DensityGapsTopologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure ContinuousDualityPackage where
  dualSpace : Type u
  dualityPairing : Type v
  weakTopology : Prop
  strongTopology : Prop
  dualityContinuity : Prop

structure ContinuousDualityEvidence (C : ContinuousDualityPackage) where
  weakTopologyClosed : C.weakTopology
  strongTopologyClosed : C.strongTopology
  dualityContinuityClosed : C.dualityContinuity

def ContinuousDualityClosed (C : ContinuousDualityPackage) : Prop :=
  C.weakTopology ∧ C.strongTopology ∧ C.dualityContinuity

theorem continuous_duality_closed_from_evidence
    (C : ContinuousDualityPackage) (E : ContinuousDualityEvidence C) :
    ContinuousDualityClosed C := by
  exact And.intro E.weakTopologyClosed (And.intro E.strongTopologyClosed E.dualityContinuityClosed)

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse