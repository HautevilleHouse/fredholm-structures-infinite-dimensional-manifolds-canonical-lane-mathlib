import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmStructure

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

def ConstrainedFredholmStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fredholm_structure_endgame (A : AdmissibleClass) :
    ConstrainedFredholmStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
