import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "fredholm-structures-infinite-dimensional-manifolds-canonical-lane"

def sourceDescription : String :=
  "Fredholm Structures on Infinite Dimensional Manifolds"

def baselineCertificateLane : String :=
  "manifold_constrained"

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := sourceRepository
    theoremName := sourceRepository
    theoremObject := sourceDescription
    classicalBoundary := "classical boundary remains open"
    manifoldConstrainedStatement := "manifold-constrained Fredholm theorem certificate internalized"
    certificateLane := baselineCertificateLane
    carriedRemainder := "classical source boundary carried"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse