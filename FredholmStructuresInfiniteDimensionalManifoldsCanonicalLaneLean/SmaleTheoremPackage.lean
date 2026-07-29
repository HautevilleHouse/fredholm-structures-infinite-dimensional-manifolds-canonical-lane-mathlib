import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmStructurePackage

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure SmaleTheoremPackage {F : FredholmStructurePackage} (E : FredholmStructureEvidence F) where
  properFredholmCondition : Prop
  solutionSetCompact : Prop
  localStructureFiniteDim : Prop
  globalStructureTheorem : Prop

structure SmaleTheoremEvidence {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} (S : SmaleTheoremPackage E) where
  properFredholmConditionClosed : S.properFredholmCondition
  solutionSetCompactClosed : S.solutionSetCompact
  localStructureFiniteDimClosed : S.localStructureFiniteDim
  globalStructureTheoremClosed : S.globalStructureTheorem

def SmaleTheoremClosed {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} (S : SmaleTheoremPackage E) : Prop :=
  S.properFredholmCondition ∧ S.solutionSetCompact ∧ S.localStructureFiniteDim ∧ S.globalStructureTheorem

theorem smale_theorem_closed_from_evidence {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} (S : SmaleTheoremPackage E) (SE : SmaleTheoremEvidence S) :
    SmaleTheoremClosed S := by
  exact And.intro SE.properFredholmConditionClosed (And.intro SE.solutionSetCompactClosed (And.intro SE.localStructureFiniteDimClosed SE.globalStructureTheoremClosed))

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse