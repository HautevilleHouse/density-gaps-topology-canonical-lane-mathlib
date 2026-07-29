import DensityGapsTopologyCanonicalLaneLean.DensityGapsTopology

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapInvariancePackage (D : DensityGapSet) where
  homeomorphismGroup : Type u
  actionContinuous : ContinuousSMul homeomorphismGroup D.carrier
  denseInvariant : ∀ (g : homeomorphismGroup), g '' D.denseSubset = D.denseSubset
  gapInvariant : ∀ (g : homeomorphismGroup), g '' D.gapComplement = D.gapComplement

structure DensityGapInvarianceEvidence {D : DensityGapSet}
  (I : DensityGapInvariancePackage D) where
  denseInvariantClosed : I.denseInvariant
  gapInvariantClosed : I.gapInvariant

def DensityGapInvarianceClosed {D : DensityGapSet}
  (I : DensityGapInvariancePackage D) : Prop :=
  I.denseInvariant ∧ I.gapInvariant

theorem density_gap_invariance_closed_from_evidence
  {D : DensityGapSet} (I : DensityGapInvariancePackage D)
  (E : DensityGapInvarianceEvidence I) : DensityGapInvarianceClosed I := by
  exact And.intro E.denseInvariantClosed E.gapInvariantClosed

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse