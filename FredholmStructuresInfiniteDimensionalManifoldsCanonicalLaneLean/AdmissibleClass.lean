import canonicalLaneMathlib.AdmissibleClass
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.InfiniteDimensionalManifold
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmOperatorStructure
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.IndexTheoryPackage

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : FredholmOperatorStructure
  operatorClosed : FredholmOperatorClosed object
  indexClosed : IndexTheoryClosed (⟨Type u, Type v, Type w, True, True, True⟩ : IndexTheoryPackage object)
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.operatorClosed ∧ A.indexClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse