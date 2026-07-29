import DensityGapsTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

def ConstrainedDensityGapsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem density_gaps_endgame (A : AdmissibleClass) :
    ConstrainedDensityGapsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
