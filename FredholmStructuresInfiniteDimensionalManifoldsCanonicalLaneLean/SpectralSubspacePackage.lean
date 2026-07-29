import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean

structure SpectralSubspacePackage (Ω : Type u) [TopologicalSpace Ω] (E : Ω → Type v) [∀ x, NormedAddCommGroup (E x)] where
  baseSpace : Ω
  totalSpace : Type w
  projection : totalSpace → Ω
  fiberIsBanach : ∀ x : Ω, NormedAddCommGroup (E x) ∧ CompleteSpace (E x)
  fredholmProperty : Prop
  indexFiniteKernel : ℕ
  indexCoKernel : ℕ
  analyticFamily : Prop

structure SpectralSubspaceEvidence {Ω : Type u} [TopologicalSpace Ω]
  {E : Ω → Type v} [∀ x, NormedAddCommGroup (E x)]
  (Pkg : SpectralSubspacePackage Ω E) where
  fredholmPropertyClosed : Pkg.fredholmProperty
  analyticFamilyClosed : Pkg.analyticFamily

def SpectralSubspaceClosed {Ω : Type u} [TopologicalSpace Ω]
  {E : Ω → Type v} [∀ x, NormedAddCommGroup (E x)]
  (Pkg : SpectralSubspacePackage Ω E) : Prop :=
  Pkg.fredholmProperty ∧ Pkg.analyticFamily

theorem spectral_subspace_closed_from_evidence {Ω : Type u} [TopologicalSpace Ω]
  {E : Ω → Type v} [∀ x, NormedAddCommGroup (E x)]
  (Pkg : SpectralSubspacePackage Ω E) (Ev : SpectralSubspaceEvidence Pkg) :
  SpectralSubspaceClosed Pkg := by
  exact And.intro Ev.fredholmPropertyClosed Ev.analyticFamilyClosed

end FredholmStructuresInfiniteDimensionalManifoldsCanonicalLaneLean
end HautevilleHouse
