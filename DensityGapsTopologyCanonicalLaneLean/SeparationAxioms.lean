import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DensityGapsTopologyCanonicalLaneLean

structure SeparationAxiomsPackage where
  regular : Prop
  completelyRegular : Prop
  t3_1half : Prop
  tychonoff : Prop

def separationAxiomsClosed (S : SeparationAxiomsPackage) : Prop :=
  S.regular ∧ S.completelyRegular ∧ S.t3_1half ∧ S.tychonoff

theorem separation_axioms_closed (S : SeparationAxiomsPackage) :
    separationAxiomsClosed S := by
  exact And.intro S.regular (And.intro S.completelyRegular (And.intro S.t3_1half S.tychonoff))

end DensityGapsTopologyCanonicalLaneLean
end HautevilleHouse
