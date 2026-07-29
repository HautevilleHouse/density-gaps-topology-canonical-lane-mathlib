import DensityGapsTopologyCanonicalLaneLean.DensityGapsAdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure MeasurePreservingShiftPackage (O : DensityGapsTopologyAdmittedObject) where
  shiftMap : O.space → O.space
  measurableShift : Measurable shiftMap
  measurePreserving : MeasureTheory.MeasurePreserving shiftMap O.measure O.measure
  ergodic : Ergodic shiftMap O.measure
  shiftInvariantSigma : Sub-σ-Algebra (O.borelSigmaAlgebra) := by
    exact MeasurableSpace.commSemiring O.space

def MeasurePreservingShiftClosed (O : DensityGapsTopologyAdmittedObject) (P : MeasurePreservingShiftPackage O) : Prop :=
  P.ergodic

theorem measure_preserving_shift_ergodic (O : DensityGapsTopologyAdmittedObject) (P : MeasurePreservingShiftPackage O) :
    MeasurePreservingShiftClosed O P := by
  exact P.ergodic

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse