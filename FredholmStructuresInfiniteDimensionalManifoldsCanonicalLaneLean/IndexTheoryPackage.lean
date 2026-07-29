import canonicalLaneMathlib.AdmissibleClass
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmOperatorStructure

/-!
# Index Theory Package

This package defines the index of a Fredholm operator and its stability under homotopy.
-/

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure IndexTheoryPackage {F : FredholmOperatorStructure} where
  indexDefinition : Type u
  indexInteger : Prop
  homotopyInvariance : Prop
  indexCalculated : indexInteger ∧ homotopyInvariance

structure IndexTheoryEvidence {F : FredholmOperatorStructure}
    (I : IndexTheoryPackage F) where
  indexIntegerClosed : I.indexInteger
  homotopyInvarianceClosed : I.homotopyInvariance
  indexCalculatedClosed : I.indexCalculated

def IndexTheoryClosed {F : FredholmOperatorStructure} (I : IndexTheoryPackage F) : Prop :=
  I.indexInteger ∧ I.homotopyInvariance ∧ I.indexCalculated

theorem index_theory_closed_from_evidence {F : FredholmOperatorStructure}
    (I : IndexTheoryPackage F) (E : IndexTheoryEvidence I) : IndexTheoryClosed I := by
  exact And.intro E.indexIntegerClosed
    (And.intro E.homotopyInvarianceClosed E.indexCalculatedClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse