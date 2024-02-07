-- import Mathlib,Data.Complex.Basic
-- import Mathlib.Order.LiminfLimsup
-- import Mathlib.Analysis.SpecialFunctions.Complex.Log
-- import Mathlib.Analysis.InnerProductSpace.Basic
-- import Mathlib.Analysis.InnerProductSpace.Spectrum
-- import Mathlib.Analysis.NormedSpace.MatrixExpsonential
-- import Mathlib.LinearAlgebra.Trace
-- import Mathlib.LinearAlgebra.TensorPower
-- import Mathlib.LinearAlgebra.Eigenspace.Basic



-- open Real Filter

-- open_locale tensor_product big_operators



-- class ComplexHilbertSpace (V : Type) [NormedAddCommGroup V] extends InnerProductSpace ℂ V :=
-- (hilbert_ness: 1=1)

-- variable {ℋ : Type} [NormedAddCommGroup ℋ] [ComplexHilbertSpace ℋ]


-- def f (A X : ℋ →ₗ[ℂ] ℋ) := X* A X


/- Lemma 3 -/
-- theorem convex_f_A (A : ℋ →ₗ[ℂ] ℋ) [nonneg A] (X Y : ℋ →ₗ[ℂ] ℋ) (t : ℝ) [0 ≤ t ∧ t ≤ 1] :
--     f A (t • X + (1-t) • Y) ≤ t • (f A X) + (1-t) • (f A Y) := by
--   have : t • (f A X) + (1-t) • (f A Y) - f A (t • X + (1-t) • Y) ≥ 0 :=
--     calc t • (f A X) + (1-t) • (f A Y) - f A (t • X + (1-t) • Y)
--                     = t • (X† A X) + (1-t) • (Y† A Y) - [t • X + (1-t) • Y]† A [t • X + (1-t) • Y] : by
--                       sorry -- rw [f]
--                     = t • (1-t) • [(X† A X) - (X† A Y) - (Y† A X) + (Y† A Y)] : by
--                       sorry -- linarith
--                     = t • (1-t) • (X-Y)† A (X-Y) : by
--                       sorry -- linarith
--                     ≥ 0 : by
--                       sorry -- prod_of_nonneg
--   linarith


-- def card_of_eigenvectors (A : ℋ →ₗ[ℂ] ℋ) : ℕ := sorry
-- notation:50 ν "(" A ")" => card_of_eigenvectors:50


/- (13) -/
-- lemma card_of_evectors_le :
--     ν(σₙ) ≤ (n + 1)^d := by
--   sorry -- type counting (Theorem 12.1.1 in [10])


-- def ψ(s) := - log Tr[ρ * σ^{s/2} * ρ^{-s} * σ^{s/2}]


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
--     A = ∑ i, a i * P i ∧ B = ∑ i, b i * P i


-- lemma diag_simul_iff_commute :
--     commute A B ↔ simul_diag A B :=
--   sorry -- linear_algebra


/- Project onto subspace of eigenvectors w/ positive eigenvalues -/
-- def proj_pos (A : ℋ →ₗ[ℂ] ℋ) [A > 0] :=
-- ∑ i, if (A.eigenvalues i) > 0 then (A.eigenvalues i) * (A.eigenvectors i) else 0




-- variables {ℋ : Type} [complex_Hilbert_space ℋ]

-- notation ℋ`^⨂`n:max := ⨂[ℂ]^n ℋ


-- -- Operator trace, log, has_le, has_pow, pos_semidef


-- /-- Operators can be less than each other -/
-- instance {n : ℕ} : has_le (ℋ^⨂n →ₗ[ℂ] ℋ^⨂n) := sorry


-- instance {n : ℕ} : has_pow (ℋ^⨂n →ₗ[ℂ] ℋ^⨂n) ℝ := sorry


-- /-- log of operator -/
-- def operator.log {n : ℕ} (ρ : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n) : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n := sorry


-- /-- trace of operator -/
-- def Tr {n : ℕ} (ρ : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n) : ℝ := sorry

-- def pos_semidef {n : ℕ} (ρ : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n): Prop := sorry


-- /-- tensor power of operator -/
-- def tensor_pow_vec (σ : ℋ^⨂1 →ₗ[ℂ] ℋ^⨂1) (n : ℕ) :
-- ℋ^⨂n →ₗ[ℂ] ℋ^⨂n := sorry

-- notation σ`^⊗`n:max := tensor_pow_vec σ n
