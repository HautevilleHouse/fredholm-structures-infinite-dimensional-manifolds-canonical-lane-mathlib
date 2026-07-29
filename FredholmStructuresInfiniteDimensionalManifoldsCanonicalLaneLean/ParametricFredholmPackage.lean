import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmStructurePackage

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure ParametricFredholmPackage {F : FredholmStructurePackage} where
  parameterSpace : Type u
  familyOfOperators : Type v
  continuityOfIndex : Prop
  propernessCondition : Prop
  orientationData : Prop

structure ParametricFredholmEvidence {F : FredholmStructurePackage} (P : ParametricFredholmPackage F) where
  continuityOfIndexClosed : P.continuityOfIndex
  propernessConditionClosed : P.propernessCondition
  orientationDataClosed : P.orientationData

def ParametricFredholmClosed {F : FredholmStructurePackage} (P : ParametricFredholmPackage F) : Prop :=
  P.continuityOfIndex ∧ P.propernessCondition ∧ P.orientationData

theorem parametric_fredholm_closed_from_evidence
    {F : FredholmStructurePackage} (P : ParametricFredholmPackage F)
    (E : ParametricFredholmEvidence P) : ParametricFredholmClosed P := by
  exact And.intro E.continuityOfIndexClosed
    (And.intro E.propernessConditionClosed E.orientationDataClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse