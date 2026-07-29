import canonicalLaneMathlib.AdmissibleClass
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmAtlas

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure InfiniteDimensionalManifoldAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  atlas : FredholmAtlas carrier
  manifoldClosed : FredholmAtlasClosed atlas

structure AdmissibleClass extends InfiniteDimensionalManifoldAdmittedObject where
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def FredholmClosure (A : AdmissibleClass) : Prop :=
  FredholmAtlasClosed A.atlas ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse