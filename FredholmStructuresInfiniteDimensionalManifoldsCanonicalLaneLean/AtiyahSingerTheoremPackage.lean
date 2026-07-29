import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.EllipticComplexPackage

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure AtiyahSingerTheoremPackage {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} {C : EllipticComplexPackage E} (CE : EllipticComplexEvidence C) where
  topologicalIndexDefined : Prop
  analyticIndexEqualsTopological : Prop
  indexComputed : Prop

structure AtiyahSingerTheoremEvidence {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} {C : EllipticComplexPackage E} {CE : EllipticComplexEvidence C} (A : AtiyahSingerTheoremPackage CE) where
  topologicalIndexDefinedClosed : A.topologicalIndexDefined
  analyticIndexEqualsTopologicalClosed : A.analyticIndexEqualsTopological
  indexComputedClosed : A.indexComputed

def AtiyahSingerTheoremClosed {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} {C : EllipticComplexPackage E} {CE : EllipticComplexEvidence C} (A : AtiyahSingerTheoremPackage CE) : Prop :=
  A.topologicalIndexDefined ∧ A.analyticIndexEqualsTopological ∧ A.indexComputed

theorem atiyah_singer_theorem_closed_from_evidence {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} {C : EllipticComplexPackage E} {CE : EllipticComplexEvidence C} (A : AtiyahSingerTheoremPackage CE) (AE : AtiyahSingerTheoremEvidence A) :
    AtiyahSingerTheoremClosed A := by
  exact And.intro AE.topologicalIndexDefinedClosed (And.intro AE.analyticIndexEqualsTopologicalClosed AE.indexComputedClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse