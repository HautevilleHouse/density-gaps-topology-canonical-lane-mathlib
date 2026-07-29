import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure GapDualityData where
  primalSpace : Type u
  dualSpace : Type v
  pairing : primalSpace → dualSpace → ℝ
  dualGapFunction : dualSpace → dualSpace → ℝ
  dualityGapRelation : Prop
  normEquivalence : Prop

structure GapDualityEvidence (D : GapDualityData) where
  dualityGapRelationClosed : D.dualityGapRelation
  normEquivalenceClosed : D.normEquivalence

def GapDualityClosed (D : GapDualityData) : Prop :=
  D.dualityGapRelation ∧ D.normEquivalence

theorem gap_duality_closed_from_evidence (D : GapDualityData) (E : GapDualityEvidence D) : GapDualityClosed D := by
  exact And.intro E.dualityGapRelationClosed E.normEquivalenceClosed

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse