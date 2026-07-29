import DensityGapsTopologyCanonicalLaneLean.MeasurePreservingShift

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure SpectralGapEstimatesPackage {O : DensityGapsTopologyAdmittedObject} {P : MeasurePreservingShiftPackage O} where
  transferOperator : (O.space → ℂ) → (O.space → ℂ)
  spectralRadius : ℝ
  spectralGapPositive : Prop
  mixingRate : ℕ → ℝ
  exponentialDecay : ∃ (C : ℝ) (θ : ℝ) (h0 : 0 < θ) (h1 : θ < 1), ∀ (n : ℕ), mixingRate n ≤ C * θ ^ n

def SpectralGapEstimatesClosed {O : DensityGapsTopologyAdmittedObject} {P : MeasurePreservingShiftPackage O}
    (S : SpectralGapEstimatesPackage P) : Prop :=
  S.spectralGapPositive ∧ S.exponentialDecay

theorem spectral_gap_estimates_from_evidence {O : DensityGapsTopologyAdmittedObject} {P : MeasurePreservingShiftPackage O}
    (S : SpectralGapEstimatesPackage P) (hgap : S.spectralGapPositive) (hdecay : S.exponentialDecay) :
    SpectralGapEstimatesClosed S := by
  exact And.intro hgap hdecay

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse