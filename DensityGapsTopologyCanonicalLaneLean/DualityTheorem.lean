import DensityGapsTopologyCanonicalLaneLean.DensityGapInvariance

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DualityTheoremPackage {D : DensityGapSet}
  (I : DensityGapInvariancePackage D) where
  dualCarrier : Type u
  dualTopology : TopologicalSpace dualCarrier
  dualDenseSubset : Set dualCarrier
  dualGapComplement : Set dualCarrier
  dualityPairing : D.carrier → dualCarrier → ℝ
  pairingContinuous : Continuous (uncurry dualityPairing)
  dualDenseInvariant : ∀ (g : I.homeomorphismGroup), g '' dualDenseSubset = dualDenseSubset
  dualGapInvariant : ∀ (g : I.homeomorphismGroup), g '' dualGapComplement = dualGapComplement

structure DualityTheoremEvidence {D : DensityGapSet}
  {I : DensityGapInvariancePackage D}
  (T : DualityTheoremPackage I) where
  dualDenseInvariantClosed : T.dualDenseInvariant
  dualGapInvariantClosed : T.dualGapInvariant

def DualityTheoremClosed {D : DensityGapSet}
  {I : DensityGapInvariancePackage D}
  (T : DualityTheoremPackage I) : Prop :=
  T.dualDenseInvariant ∧ T.dualGapInvariant

theorem duality_theorem_closed_from_evidence
  {D : DensityGapSet} {I : DensityGapInvariancePackage D}
  (T : DualityTheoremPackage I) (E : DualityTheoremEvidence T) :
  DualityTheoremClosed T := by
  exact And.intro E.dualDenseInvariantClosed E.dualGapInvariantClosed

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse