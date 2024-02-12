-- import Ogawa2001.Util


-- open BigOperators NormedSpace -- Real Filter


-- variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]


-- postfix:1024 "†" => LinearMap.adjoint
-- local notation "⟪" x ", " y "⟫" => @inner ℂ _ _ x y


-- noncomputable section


/- Pinch operator B by operator A -/
-- def pinch (A B : V →ₗ[ℂ] V) (hA : LinearMap.IsSymmetric A) (hn : FiniteDimensional.finrank ℂ V = n) :=
-- ∑ i, (hA.eigenvectorBasis hn i) * B * (hA.eigenvectorBasis hn i)


/- Lemma 1: makes new proof possible -/
-- theorem le_pinch [ρ : V →ₗ[ℂ] V] [Test M] :
--     ρ ≤ ν(M) * (pinch M ρ) := by
--   have : ρ / ν(M)^2 ≤ 1/ν(M) * (pinch M ρ) :=
--     calc ρ / ν(M)^2 = (1/ν(M) * ∑ i, M i) ρ (1/ν(M) * ∑ i, M i) : by
--                       sorry -- test.sum_one, linarith
--                     ≤ 1/ν(M) * ∑ i, M i *  ρ * M i : by
--                       sorry
--                     = 1/ν(M) * (pinch M ρ) : by
--                       sorry -- rw [pinch]
--   rw [this]


/- (14) -/
-- lemma pinch_pow_le {hs : 0 ≤ s ∧ s ≤ 1} :
--     (pinch M ρ)^(-s) ≤ ν(M)^s ρ^(-s) := by
--   -- operator_monotone (λ x, -x^{-s}) at le_pinch
--   sorry


-- lemma tr_of_pinch {A B C : V →ₗ[ℂ] V} [Commute A C] :
--     Tr[(pinch A B) C] = Tr[B C] :=
--   sorry


-- lemma pinch_and_pincher_commute {A B : V →ₗ[ℂ] V} :
--     Commute (pinch A B) A := by
--   -- rw [Commute] -- (pinch A B) A = A (pinch A B)
--   -- rw [pinch] -- (∑ i, Av i * B * Av i) A = A (∑ i, Av i * B * Av i)
--   -- rw [spec_decomp A] -- (∑ i, Av i * B * Av i) (∑ j, a * Av j) = (∑ j, a * Av j) (∑ i, Av i * B * Av i)
--   -- ...
--   sorry
