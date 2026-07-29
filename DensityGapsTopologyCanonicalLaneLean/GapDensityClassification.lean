import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure GapDensityClass where
  label : String
  densityBound : ℝ
  gapThreshold : ℝ
  finiteCover : Prop
  separationProperty : Prop

structure GapDensityEvidence (C : GapDensityClass) where
  densityBoundClosed : C.densityBound > 0
  gapThresholdClosed : C.gapThreshold > 0
  finiteCoverClosed : C.finiteCover
  separationPropertyClosed : C.separationProperty

def GapDensityClassClosed (C : GapDensityClass) : Prop :=
  C.densityBound > 0 ∧ C.gapThreshold > 0 ∧ C.finiteCover ∧ C.separationProperty

theorem gap_density_class_closed_from_evidence (C : GapDensityClass) (E : GapDensityEvidence C) : GapDensityClassClosed C := by
  exact And.intro E.densityBoundClosed (And.intro E.gapThresholdClosed (And.intro E.finiteCoverClosed E.separationPropertyClosed))

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse