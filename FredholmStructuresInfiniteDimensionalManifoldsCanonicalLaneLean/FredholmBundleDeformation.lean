import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure FredholmBundleDeformationPackage (B : Type u) [TopologicalSpace B] (E : B → Type v) [∀ b, NormedAddCommGroup (E b)] where
  baseConnected : Prop
  fiberBundle : Type w
  deformationFamily : Prop
  uniformFredholm : Prop
  homotopyInvariance : Prop

structure FredholmBundleDeformationEvidence {B : Type u} [TopologicalSpace B]
  {E : B → Type v} [∀ b, NormedAddCommGroup (E b)]
  (Pkg : FredholmBundleDeformationPackage B E) where
  deformationFamilyClosed : Pkg.deformationFamily
  uniformFredholmClosed : Pkg.uniformFredholm
  homotopyInvarianceClosed : Pkg.homotopyInvariance

def FredholmBundleDeformationClosed {B : Type u} [TopologicalSpace B]
  {E : B → Type v} [∀ b, NormedAddCommGroup (E b)]
  (Pkg : FredholmBundleDeformationPackage B E) : Prop :=
  Pkg.deformationFamily ∧ Pkg.uniformFredholm ∧ Pkg.homotopyInvariance

theorem fredholm_bundle_deformation_closed_from_evidence {B : Type u} [TopologicalSpace B]
  {E : B → Type v} [∀ b, NormedAddCommGroup (E b)]
  (Pkg : FredholmBundleDeformationPackage B E) (Ev : FredholmBundleDeformationEvidence Pkg) :
  FredholmBundleDeformationClosed Pkg := by
  exact And.intro Ev.deformationFamilyClosed
    (And.intro Ev.uniformFredholmClosed Ev.homotopyInvarianceClosed)

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
