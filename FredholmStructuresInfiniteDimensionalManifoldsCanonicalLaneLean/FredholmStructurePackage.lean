import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmStructurePackage where
  sourceManifold : Type u
  targetManifold : Type v
  fredholmIndex : ℤ
  indexWellDefined : Prop
  properCondition : Prop

structure FredholmStructureEvidence (F : FredholmStructurePackage) where
  indexWellDefinedClosed : F.indexWellDefined
  properConditionClosed : F.properCondition

def FredholmStructureClosed (F : FredholmStructurePackage) : Prop :=
  F.indexWellDefined ∧ F.properCondition

theorem fredholm_structure_closed_from_evidence (F : FredholmStructurePackage) (E : FredholmStructureEvidence F) :
    FredholmStructureClosed F := by
  exact And.intro E.indexWellDefinedClosed E.properConditionClosed

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse