import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmOperator

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure IndexTheoryPackage {F : FredholmOperatorPackage} where
  indexInvarianceUnderHomotopy : Prop
  indexInvarianceUnderCompactPerturbation : Prop
  atiyahSingerFramework : Prop

structure IndexTheoryEvidence {F : FredholmOperatorPackage}
    (I : IndexTheoryPackage F) where
  indexInvarianceUnderHomotopyClosed : I.indexInvarianceUnderHomotopy
  indexInvarianceUnderCompactPerturbationClosed : I.indexInvarianceUnderCompactPerturbation
  atiyahSingerFrameworkClosed : I.atiyahSingerFramework

def IndexTheoryClosed {F : FredholmOperatorPackage}
    (I : IndexTheoryPackage F) : Prop :=
  I.indexInvarianceUnderHomotopy ∧ I.indexInvarianceUnderCompactPerturbation ∧
  I.atiyahSingerFramework

theorem index_theory_closed_from_evidence {F : FredholmOperatorPackage}
    (I : IndexTheoryPackage F) (E : IndexTheoryEvidence I) :
    IndexTheoryClosed I := by
  exact And.intro E.indexInvarianceUnderHomotopyClosed
    (And.intro E.indexInvarianceUnderCompactPerturbationClosed
      E.atiyahSingerFrameworkClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
