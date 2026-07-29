import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityInvariancePackage where
  transformationGroup : Type u
  action : transformationGroup → GapTopologyObject → GapTopologyObject
  invariantMeasure : Prop
  densityPreserved : Prop
  gapStructurePreserved : Prop

structure DensityInvarianceEvidence (P : DensityInvariancePackage) where
  invariantMeasureClosed : P.invariantMeasure
  densityPreservedClosed : P.densityPreserved
  gapStructurePreservedClosed : P.gapStructurePreserved

def DensityInvarianceClosed (P : DensityInvariancePackage) : Prop :=
  P.invariantMeasure ∧ P.densityPreserved ∧ P.gapStructurePreserved

theorem density_invariance_closed_from_evidence (P : DensityInvariancePackage) (E : DensityInvarianceEvidence P) : DensityInvarianceClosed P := by
  exact And.intro E.invariantMeasureClosed (And.intro E.densityPreservedClosed E.gapStructurePreservedClosed)

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse