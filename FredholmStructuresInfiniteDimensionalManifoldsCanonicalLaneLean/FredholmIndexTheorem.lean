import canonicalLaneMathlib.AdmissibleClass
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmOperatorFamily

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmIndexTheorem {M : Type u} {A : FredholmAtlas M} (F : FredholmOperatorFamily A) where
  indexComputed : ℤ
  topologicalInvariance : Prop
  indexHomotopyInvariance : Prop
  indexComputedTerm : indexComputed = F.fredholmIndices
  topologicalInvarianceTerm : topologicalInvariance
  indexHomotopyInvarianceTerm : indexHomotopyInvariance

def FredholmIndexTheoremClosed {M : Type u} {A : FredholmAtlas M} {F : FredholmOperatorFamily A} (I : FredholmIndexTheorem F) : Prop :=
  I.topologicalInvariance ∧ I.indexHomotopyInvariance

theorem fredholm_index_theorem_closed_from_evidence {M : Type u} {A : FredholmAtlas M} {F : FredholmOperatorFamily A} (I : FredholmIndexTheorem F) (ht : I.topologicalInvarianceTerm) (hh : I.indexHomotopyInvarianceTerm) : FredholmIndexTheoremClosed I := by
  exact And.intro ht hh

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse