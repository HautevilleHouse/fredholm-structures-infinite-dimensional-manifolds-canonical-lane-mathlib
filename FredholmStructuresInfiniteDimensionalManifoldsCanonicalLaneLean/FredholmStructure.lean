import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmOperator
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.InfiniteDimensionalManifold

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmStructurePackage {M : InfiniteDimensionalManifoldPackage}
    {F : FredholmOperatorPackage} where
  tangentBundle : Type u
  fredholmSection : M.modelSpace → F.targetBanach
  fredholmConditionOnSection : Prop
  transversality : Prop
  moduliSpaceModel : Prop

structure FredholmStructureEvidence {M : InfiniteDimensionalManifoldPackage}
    {F : FredholmOperatorPackage} (S : FredholmStructurePackage M F) where
  fredholmConditionOnSectionClosed : S.fredholmConditionOnSection
  transversalityClosed : S.transversality
  moduliSpaceModelClosed : S.moduliSpaceModel

def FredholmStructureClosed {M : InfiniteDimensionalManifoldPackage}
    {F : FredholmOperatorPackage} (S : FredholmStructurePackage M F) : Prop :=
  S.fredholmConditionOnSection ∧ S.transversality ∧ S.moduliSpaceModel

theorem fredholm_structure_closed_from_evidence {M : InfiniteDimensionalManifoldPackage}
    {F : FredholmOperatorPackage} (S : FredholmStructurePackage M F)
    (E : FredholmStructureEvidence S) : FredholmStructureClosed S := by
  exact And.intro E.fredholmConditionOnSectionClosed
    (And.intro E.transversalityClosed E.moduliSpaceModelClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
