import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure AnalyticContinuationGapPackage (X : Type u) [TopologicalSpace X] (Y : Type v) [NormedAddCommGroup Y] [CompleteSpace Y] where
  familyOfOperators : X → (Y → Y)
  analyticInParameter : Prop
  fredholmRegion : Set X
  gapPoints : Set X
  continuationPossible : Prop
  isolatedGap : Prop

structure AnalyticContinuationGapEvidence (Pkg : AnalyticContinuationGapPackage X Y) where
  analyticInParameterClosed : Pkg.analyticInParameter
  continuationPossibleClosed : Pkg.continuationPossible
  isolatedGapClosed : Pkg.isolatedGap

def AnalyticContinuationGapClosed (Pkg : AnalyticContinuationGapPackage X Y) : Prop :=
  Pkg.analyticInParameter ∧ Pkg.continuationPossible ∧ Pkg.isolatedGap

theorem analytic_continuation_gap_closed_from_evidence (Pkg : AnalyticContinuationGapPackage X Y)
  (Ev : AnalyticContinuationGapEvidence Pkg) : AnalyticContinuationGapClosed Pkg := by
  exact And.intro Ev.analyticInParameterClosed
    (And.intro Ev.continuationPossibleClosed Ev.isolatedGapClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
