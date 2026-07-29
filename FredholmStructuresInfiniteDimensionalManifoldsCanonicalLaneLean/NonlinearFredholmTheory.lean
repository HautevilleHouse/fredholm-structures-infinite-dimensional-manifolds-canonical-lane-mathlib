import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean.FredholmOperator

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure NonlinearFredholmPackage {F : FredholmOperatorPackage} where
  nonlinearOperator : F.sourceBanach → F.targetBanach
  linearizationIsFredholmAtEachPoint : Prop
  propernessCondition : Prop
  degreeTheory : Prop

structure NonlinearFredholmEvidence {F : FredholmOperatorPackage}
    (N : NonlinearFredholmPackage F) where
  linearizationIsFredholmAtEachPointClosed : N.linearizationIsFredholmAtEachPoint
  propernessConditionClosed : N.propernessCondition
  degreeTheoryClosed : N.degreeTheory

def NonlinearFredholmClosed {F : FredholmOperatorPackage}
    (N : NonlinearFredholmPackage F) : Prop :=
  N.linearizationIsFredholmAtEachPoint ∧ N.propernessCondition ∧ N.degreeTheory

theorem nonlinear_fredholm_closed_from_evidence {F : FredholmOperatorPackage}
    (N : NonlinearFredholmPackage F) (E : NonlinearFredholmEvidence N) :
    NonlinearFredholmClosed N := by
  exact And.intro E.linearizationIsFredholmAtEachPointClosed
    (And.intro E.propernessConditionClosed E.degreeTheoryClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
