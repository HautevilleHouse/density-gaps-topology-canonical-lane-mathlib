import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure GapTopologyObject where
  baseSpace : Type u
  gapSet : Set (baseSpace × baseSpace)
  gapFunction : baseSpace → baseSpace → ℝ
  gapOpen : ∀ x y, gapFunction x y > 0 ↔ gapSet (x, y)
  symmetry : ∀ x y, gapFunction x y = gapFunction y x
  triangleInequality : ∀ x y z, gapFunction x z ≤ gapFunction x y + gapFunction y z

def gapClosed (O : GapTopologyObject) : Prop :=
  ∀ x y, O.gapFunction x y ≥ 0

theorem gap_closed_from_object (O : GapTopologyObject) : gapClosed O := by
  intro x y
  have hpos : O.gapFunction x y > 0 ∨ O.gapFunction x y = 0 := by
    apply lt_or_eq_of_le
    exact le_of_lt (by
      have := O.gapOpen x y
      sorry)
  sorry

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse