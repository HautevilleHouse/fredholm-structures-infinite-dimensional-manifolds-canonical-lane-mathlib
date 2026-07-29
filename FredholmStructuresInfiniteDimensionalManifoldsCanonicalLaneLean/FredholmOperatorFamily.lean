import canonicalLaneMathlib.AdmissibleClass
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmAtlas

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmOperatorFamily {M : Type u} (A : FredholmAtlas M) where
  baseSpace : Type v
  parameterSpace : Type w
  operators : baseSpace → parameterSpace → (M → M)
  smoothness : Prop
  fredholmIndices : ℤ
  localTrivialization : Prop
  smoothnessTerm : smoothness
  localTrivializationTerm : localTrivialization

def FredholmOperatorFamilyClosed {M : Type u} {A : FredholmAtlas M} (F : FredholmOperatorFamily A) : Prop :=
  F.smoothness ∧ F.localTrivialization

theorem fredholm_operator_family_closed_from_evidence {M : Type u} {A : FredholmAtlas M} (F : FredholmOperatorFamily A) (hs : F.smoothnessTerm) (hl : F.localTrivializationTerm) : FredholmOperatorFamilyClosed F := by
  exact And.intro hs hl

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse