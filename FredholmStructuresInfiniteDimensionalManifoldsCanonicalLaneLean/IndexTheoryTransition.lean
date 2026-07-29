import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure IndexTheoryTransitionPackage (M : Type u) [TopologicalSpace M] [CompactSpace M] where
  fredholmOperator : Type v
  analyticIndex : ℤ
  spectralFlow : Prop
  appliedToManifold : Prop

structure IndexTheoryTransitionEvidence (Pkg : IndexTheoryTransitionPackage M) where
  analyticIndexClosed : Pkg.analyticIndex = 0
  spectralFlowClosed : Pkg.spectralFlow

def IndexTheoryTransitionClosed (Pkg : IndexTheoryTransitionPackage M) : Prop :=
  Pkg.analyticIndex = 0 ∧ Pkg.spectralFlow

theorem index_theory_transition_closed_from_evidence (Pkg : IndexTheoryTransitionPackage M)
  (Ev : IndexTheoryTransitionEvidence Pkg) : IndexTheoryTransitionClosed Pkg := by
  exact And.intro Ev.analyticIndexClosed Ev.spectralFlowClosed

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
