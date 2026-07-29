import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure DensityGapsTopologyAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  borelSigmaAlgebra : MeasurableSpace space
  measure : MeasureTheory.Measure space
  shiftInvariant : Prop
  zeroDensityGap : Prop
  gapDense : Prop
  conclusion : zeroDensityGap

def DensityGapsWitnessClosed (O : DensityGapsTopologyAdmittedObject) : Prop :=
  O.zeroDensityGap

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse