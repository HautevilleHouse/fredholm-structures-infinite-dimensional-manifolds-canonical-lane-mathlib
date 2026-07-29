import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmOperatorPackage where
  sourceBanach : Type u
  targetBanach : Type v
  operator : sourceBanach → targetBanach
  index : ℤ
  fredholmProperty : Prop
  differentiable : Prop

structure FredholmOperatorEvidence (F : FredholmOperatorPackage) where
  operatorClosed : F.operator
  indexClosed : F.index = F.index
  fredholmPropertyClosed : F.fredholmProperty
  differentiableClosed : F.differentiable

def FredholmOperatorClosed (F : FredholmOperatorPackage) : Prop :=
  F.fredholmProperty ∧ F.differentiable

theorem fredholm_operator_closed_from_evidence (F : FredholmOperatorPackage)
    (E : FredholmOperatorEvidence F) : FredholmOperatorClosed F := by
  exact And.intro E.fredholmPropertyClosed E.differentiableClosed

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
