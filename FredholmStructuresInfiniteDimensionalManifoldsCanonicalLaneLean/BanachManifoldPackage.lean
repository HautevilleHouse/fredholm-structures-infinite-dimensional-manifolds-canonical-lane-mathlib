import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure BanachManifoldPackage where
  modelSpace : Type u
  atlas : Type v
  chartsSmoothCompatible : Prop
  paracompact : Prop
  metricDefined : Prop

structure BanachManifoldEvidence (B : BanachManifoldPackage) where
  chartsSmoothCompatibleClosed : B.chartsSmoothCompatible
  paracompactClosed : B.paracompact
  metricDefinedClosed : B.metricDefined

def BanachManifoldClosed (B : BanachManifoldPackage) : Prop :=
  B.chartsSmoothCompatible ∧ B.paracompact ∧ B.metricDefined

theorem banach_manifold_closed_from_evidence (B : BanachManifoldPackage) (E : BanachManifoldEvidence B) :
    BanachManifoldClosed B := by
  exact And.intro E.chartsSmoothCompatibleClosed (And.intro E.paracompactClosed E.metricDefinedClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse