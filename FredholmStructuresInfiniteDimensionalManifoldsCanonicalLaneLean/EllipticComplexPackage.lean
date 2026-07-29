import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmStructurePackage

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure EllipticComplexPackage {F : FredholmStructurePackage} (E : FredholmStructureEvidence F) where
  differentialOperator : Type w
  laplacianDefined : Prop
  cohomologyFiniteDimensional : Prop
  indexTheoremApplicable : Prop

structure EllipticComplexEvidence {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} (C : EllipticComplexPackage E) where
  laplacianDefinedClosed : C.laplacianDefined
  cohomologyFiniteDimensionalClosed : C.cohomologyFiniteDimensional
  indexTheoremApplicableClosed : C.indexTheoremApplicable

def EllipticComplexClosed {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} (C : EllipticComplexPackage E) : Prop :=
  C.laplacianDefined ∧ C.cohomologyFiniteDimensional ∧ C.indexTheoremApplicable

theorem elliptic_complex_closed_from_evidence {F : FredholmStructurePackage} {E : FredholmStructureEvidence F} (C : EllipticComplexPackage E) (CE : EllipticComplexEvidence C) :
    EllipticComplexClosed C := by
  exact And.intro CE.laplacianDefinedClosed (And.intro CE.cohomologyFiniteDimensionalClosed CE.indexTheoremApplicableClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse