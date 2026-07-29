import DensityGapsTopologyCanonicalLaneLean.DensityGapClassification

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure TopologicalInvariancePackage (C : ContinuousDualityPackage) where
  invarianceProperty : Prop
  bridgingProperty : Prop
  equivarianceCondition : Prop

structure TopologicalInvarianceEvidence {C : ContinuousDualityPackage} (T : TopologicalInvariancePackage C) where
  invariancePropertyClosed : T.invarianceProperty
  bridgingPropertyClosed : T.bridgingProperty
  equivarianceConditionClosed : T.equivarianceCondition

def TopologicalInvarianceClosed {C : ContinuousDualityPackage} (T : TopologicalInvariancePackage C) : Prop :=
  T.invarianceProperty ∧ T.bridgingProperty ∧ T.equivarianceCondition

theorem topological_invariance_closed_from_evidence
    {C : ContinuousDualityPackage} (T : TopologicalInvariancePackage C)
    (E : TopologicalInvarianceEvidence T) : TopologicalInvarianceClosed T := by
  exact And.intro E.invariancePropertyClosed (And.intro E.bridgingPropertyClosed E.equivarianceConditionClosed)

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse