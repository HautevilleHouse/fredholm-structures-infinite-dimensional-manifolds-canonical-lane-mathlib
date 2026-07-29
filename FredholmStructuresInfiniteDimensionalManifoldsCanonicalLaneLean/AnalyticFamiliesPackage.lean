import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmStructurePackage

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure AnalyticFamiliesPackage {F : FredholmStructurePackage} where
  analyticFamily : Type u
  baseManifold : Type v
  analyticDependence : Prop
  fredholmPropertyAnalytic : Prop
  resolventEstimateUniform : Prop

structure AnalyticFamiliesEvidence {F : FredholmStructurePackage} (A : AnalyticFamiliesPackage F) where
  analyticDependenceClosed : A.analyticDependence
  fredholmPropertyAnalyticClosed : A.fredholmPropertyAnalytic
  resolventEstimateUniformClosed : A.resolventEstimateUniform

def AnalyticFamiliesClosed {F : FredholmStructurePackage} (A : AnalyticFamiliesPackage F) : Prop :=
  A.analyticDependence ∧ A.fredholmPropertyAnalytic ∧ A.resolventEstimateUniform

theorem analytic_families_closed_from_evidence
    {F : FredholmStructurePackage} (A : AnalyticFamiliesPackage F)
    (E : AnalyticFamiliesEvidence A) : AnalyticFamiliesClosed A := by
  exact And.intro E.analyticDependenceClosed
    (And.intro E.fredholmPropertyAnalyticClosed E.resolventEstimateUniformClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse