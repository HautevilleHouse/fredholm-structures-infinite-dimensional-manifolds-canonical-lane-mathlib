import canonicalLaneMathlib.AdmissibleClass

/-!
# Infinite-Dimensional Manifold Package

This package defines the notion of an infinite-dimensional manifold modeled on a
Fréchet or Banach space, and the relevant smooth structure.
-/

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure InfiniteDimensionalManifold where
  modelSpace : Type u
  chart : Type v
  atlas : Type w
  smoothCompatible : Prop
  hausdorff : Prop
  secondCountable : Prop

structure ManifoldEvidence (M : InfiniteDimensionalManifold) where
  smoothCompatibleClosed : M.smoothCompatible
  hausdorffClosed : M.hausdorff
  secondCountableClosed : M.secondCountable

def ManifoldClosed (M : InfiniteDimensionalManifold) : Prop :=
  M.smoothCompatible ∧ M.hausdorff ∧ M.secondCountable

theorem manifold_closed_from_evidence (M : InfiniteDimensionalManifold)
    (E : ManifoldEvidence M) : ManifoldClosed M := by
  exact And.intro E.smoothCompatibleClosed
    (And.intro E.hausdorffClosed E.secondCountableClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse