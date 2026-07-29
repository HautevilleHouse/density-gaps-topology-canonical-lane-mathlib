import DensityGapsTopologyCanonicalLaneLean.ContinuousDuality

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapClassificationPackage {C : ContinuousDualityPackage} (T : TopologicalInvariancePackage C) where
  gapType : Type u
  gapCondition : Prop
  gapInvariance : Prop
  classificationConclusion : Prop

structure DensityGapClassificationEvidence {C : ContinuousDualityPackage} {T : TopologicalInvariancePackage C} (D : DensityGapClassificationPackage T) where
  gapConditionClosed : D.gapCondition
  gapInvarianceClosed : D.gapInvariance
  classificationConclusionClosed : D.classificationConclusion

def DensityGapClassificationClosed {C : ContinuousDualityPackage} {T : TopologicalInvariancePackage C} (D : DensityGapClassificationPackage T) : Prop :=
  D.gapCondition ∧ D.gapInvariance ∧ D.classificationConclusion

theorem density_gap_classification_closed_from_evidence
    {C : ContinuousDualityPackage} {T : TopologicalInvariancePackage C}
    (D : DensityGapClassificationPackage T) (E : DensityGapClassificationEvidence D) :
    DensityGapClassificationClosed D := by
  exact And.intro E.gapConditionClosed (And.intro E.gapInvarianceClosed E.classificationConclusionClosed)

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse