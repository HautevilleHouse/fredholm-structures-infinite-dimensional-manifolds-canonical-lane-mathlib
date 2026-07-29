import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure BifurcationFredholmTransitionPackage (M : Type u) [TopologicalSpace M] (Λ : Type v) [TopologicalSpace Λ] where
  bifurcationSurface : Set (Λ × M)
  fredholmOperatorFamily : Λ → (M → M)
  indexJump : Prop
  crossingCondition : Prop
  structuralStability : Prop

structure BifurcationFredholmTransitionEvidence (Pkg : BifurcationFredholmTransitionPackage M Λ) where
  indexJumpClosed : Pkg.indexJump
  crossingConditionClosed : Pkg.crossingCondition
  structuralStabilityClosed : Pkg.structuralStability

def BifurcationFredholmTransitionClosed (Pkg : BifurcationFredholmTransitionPackage M Λ) : Prop :=
  Pkg.indexJump ∧ Pkg.crossingCondition ∧ Pkg.structuralStability

theorem bifurcation_fredholm_transition_closed_from_evidence (Pkg : BifurcationFredholmTransitionPackage M Λ)
  (Ev : BifurcationFredholmTransitionEvidence Pkg) : BifurcationFredholmTransitionClosed Pkg := by
  exact And.intro Ev.indexJumpClosed
    (And.intro Ev.crossingConditionClosed Ev.structuralStabilityClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
