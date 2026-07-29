import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmAtlas (M : Type u) where
  charts : Set (Set M)
  transitionMaps : ∀ (U V : Set M), U ∈ charts → V ∈ charts → (U ∩ V → M → M)
  smoothOverlap : Prop
  fredholmProperty : Prop
  indexConstant : ℤ
  smoothOverlapTerm : smoothOverlap
  fredholmPropertyTerm : fredholmProperty

def FredholmAtlasClosed (A : FredholmAtlas M) : Prop :=
  A.smoothOverlap ∧ A.fredholmProperty

theorem fredholm_atlas_closed_from_evidence (A : FredholmAtlas M) (h : A.smoothOverlapTerm) (h' : A.fredholmPropertyTerm) : FredholmAtlasClosed A := by
  exact And.intro h h'

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse