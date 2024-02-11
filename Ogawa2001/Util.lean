-- import Mathlib.Data.Complex.Basic
-- import Mathlib.Analysis.InnerProductSpace.Adjoint
-- import Mathlib.Analysis.InnerProductSpace.Spectrum
-- import Mathlib.Analysis.NormedSpace.Exponential
-- import Mathlib.LinearAlgebra.Trace
-- import Mathlib.LinearAlgebra.Eigenspace.Basic
-- import Mathlib.LinearAlgebra.TensorPower

-- import Mathlib.Order.LiminfLimsup
-- import Mathlib.Analysis.SpecialFunctions.Complex.Log


-- open BigOperators NormedSpace Complex TensorProduct TensorPower -- Filter


-- postfix:1024 "†" => LinearMap.adjoint
-- local notation "⟪" x ", " y "⟫" => @inner ℂ _ _ x y


-- noncomputable section


-- variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]


/- 0 ≤ A -/
-- def nonneg (A : V →ₗ[ℂ] V) :=
  -- ∀ x, 0 ≤ re ⟪x, A x⟫


/- B ≤ A -/
-- instance : LE (V →ₗ[ℂ] V) :=
  -- ⟨fun A B => nonneg (B - A)⟩


/- Trace of linear operator -/
-- def Tr (A : V →ₗ[ℂ] V) : ℂ := LinearMap.trace ℂ V A


/- Project onto subspace of eigenvectors w/ positive eigenvalues -/
-- def proj_pos (A : V →ₗ[ℂ] V) (hA' : LinearMap.IsSymmetric A) (hn : FiniteDimensional.finrank ℂ V = n) :=
  -- ∑ i, if (hA'.eigenvalues hn i) > 0 then (hA'.eigenvalues hn i) • (hA'.eigenvectorBasis hn i) else 0


-- def card_of_eigenvectors {n : ℕ} (A : V →ₗ[ℂ] V) (hA : LinearMap.IsSymmetric A) (hn : FiniteDimensional.finrank ℂ V = n) :=
  -- Fintype.card {i // hA.eigenvalues hn i ≠ 0}


-- def f (A X : V →ₗ[ℂ] V) := X† * A * X


/- Lemma 3: f A (t • X + (1-t) • Y) ≤ ( t • (f A X) + (1-t) • (f A Y) ) -/
-- theorem convex_f_A (A : V →ₗ[ℂ] V) (h : 0 ≤ A) (X Y : V →ₗ[ℂ] V) (t : ℝ) (ht : 0 ≤ t ∧ t ≤ 1) :
    -- 0 ≤ t • (f A X) + (1-t) • (f A Y) - f A (t • X + (1-t) • Y) := by
  -- have h1 :
      -- t • (f A X) + (1-t) • (f A Y) - f A (t • X + (1-t) • Y) = t • (1-t) • (X-Y)† * A * (X-Y) := by
    -- calc t • (f A X) + (1-t) • (f A Y) - f A (t • X + (1-t) • Y)
                    -- = t • (X† * A * X) + (1-t) • (Y† * A * Y) - (t • X + (1-t) • Y)† * A * (t • X + (1-t) • Y) := by
                      -- rw [f]
                      -- rw [f]
                      -- rw [f]
                  -- _ = t • (1-t) • ((X† * A * X) - (X† * A * Y) - (Y† * A * X) + (Y† * A * Y)) := by
                      -- sorry -- linarith
                  -- _ = t • (1-t) • (X-Y)† * A * (X-Y) := by
                      -- sorry -- linarith
  -- have h2 : 0 ≤ t • (1-t) • (X-Y)† * A * (X-Y) := by sorry -- prod_of_nonneg
  -- rw [h1]
  -- exact h2


/- (13) -/
-- lemma card_of_evectors_le {n : ℕ} (A : V →ₗ[ℂ] V) (hA : LinearMap.IsSymmetric A) (hn : FiniteDimensional.finrank ℂ V = n) :
--     card_of_eigenvectors A hA hn ≤ (n + 1)^d := by
--   sorry -- type counting (Theorem 12.1.1 in [10])


-- def ψ (s : ℝ) (ρ σ : V →ₗ[ℂ] V) := Complex.log ( Tr ( ρ * σ^(s/2) * ρ^(-s) * σ^(s/2) ) )


-- lemma deriv_psi : ψ'(s) = D(ρ||σ) :=
--   sorry


-- lemma psi_of_zero : ψ(0) = 0 :=
--   calc ψ(0) = - log Tr[ρ * σ^{0/2} * ρ^{-0} * σ^{0/2}] : by rw [ψ]
--             = - log Tr[ρ * 1 * 1 * 1]                  : by linarith
--             = - log Tr[ρ]                              : by rw [mul_one]
--             = - log 1                                  : by rw [state.trace_one]
--             = 0                                        : by rw [log_one]


-- lemma psi'_of_zero :
--     ψ'(0) = D(ρ||σ) :=
--   sorry


-- lemma exists_s { a < D(ρ||σ) } :
--     ∃ [0 ≤ s ≤ 1], ψ(s) > a*s :=
--   sorry


/- Simultaneously diagonalizable -/
-- def simul_diag (A B) :=
--   ∃ POVM P,
--     A = ∑ i, a i * P i ∧ B = ∑ i, b i * P
-- exists set of eigenvectors M, such that A = \sum ai * Mi  and B = \sum bi * Mi


-- lemma simul_diag_iff_commute :
--     Commute A B ↔ simul_diag A B :=
--   sorry


/- operator B is log of operator A -/
-- def is_op_log (A B : V →ₗ[ℂ] V) :=
-- A = exp ℂ B
