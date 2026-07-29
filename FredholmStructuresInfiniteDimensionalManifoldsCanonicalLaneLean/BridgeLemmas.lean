import canonicalLaneMathlib.AdmissibleClass
import FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.InfiniteDimensionalManifoldAdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FredholmAtlasClosed A.atlas

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.manifoldClosed

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse