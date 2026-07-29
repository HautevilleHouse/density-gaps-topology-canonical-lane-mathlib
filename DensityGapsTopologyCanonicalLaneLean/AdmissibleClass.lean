import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure AdmissibleClass where
  object : DensityGapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DensityGapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
