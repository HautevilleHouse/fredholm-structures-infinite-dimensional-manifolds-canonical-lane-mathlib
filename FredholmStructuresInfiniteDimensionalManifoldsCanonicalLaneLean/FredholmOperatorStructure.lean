import canonicalLaneMathlib.AdmissibleClass

/-!
# Fredholm Operator Structure Package

This module defines the structure of a Fredholm operator between infinite-dimensional
manifolds, a central object in the analysis of elliptic complexes and index theory.
-/

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmOperatorStructure where
  sourceManifold : Type u
  targetManifold : Type v
  operator : sourceManifold → targetManifold
  differentiable : Prop
  kernelFiniteDimensional : Prop
  cokernelFiniteDimensional : Prop
  indexWellDefined : Prop

structure FredholmOperatorEvidence (F : FredholmOperatorStructure) where
  differentiableClosed : F.differentiable
  kernelFiniteDimensionalClosed : F.kernelFiniteDimensional
  cokernelFiniteDimensionalClosed : F.cokernelFiniteDimensional
  indexWellDefinedClosed : F.indexWellDefined

def FredholmOperatorClosed (F : FredholmOperatorStructure) : Prop :=
  F.differentiable ∧ F.kernelFiniteDimensional ∧
  F.cokernelFiniteDimensional ∧ F.indexWellDefined

theorem fredholm_operator_closed_from_evidence (F : FredholmOperatorStructure)
    (E : FredholmOperatorEvidence F) : FredholmOperatorClosed F := by
  exact And.intro E.differentiableClosed
    (And.intro E.kernelFiniteDimensionalClosed
      (And.intro E.cokernelFiniteDimensionalClosed
        E.indexWellDefinedClosed))

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse