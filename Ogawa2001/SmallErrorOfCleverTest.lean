/- Thm 3α: Sₙ constructed s.t. upper bound vanishes for large n -/
-- theorem error_αₙ_of_test_Sₙ_le { a < D(ρ||σ) } { 0 ≤ s ≤ 1 } :
--     αₙ(Sₙ a) ≤ (n + 1)^{s*d} * exp(-n * [ψ(s) - a*s]) := by
--   calc αₙ(Sₙ a) = Tr[ρₙ * (1ₙ - (Sₙ a))] : by
--                   sorry -- rw [αₙ]
--                 = Tr[(pinch σₙ ρₙ) * (1ₙ - (Sₙ a))] : by
--                   sorry -- rw [tr_of_pinch]
--                 = Tr[(pinch σₙ ρₙ)^{1-s} * (pinch σₙ ρₙ)^s * (1ₙ - (Sₙ a))] : by
--                   sorry -- linarith
--                 ≤ exp(n*a*s) * Tr[(pinch σₙ ρₙ)^{1-s} * σₙ^s * (1ₙ - (Sₙ a))] : by
--                     have : ((pinch σₙ ρₙ)^s - exp(n*a*s) σₙ^s)(1ₙ - (Sₙ a)) ≤ 0 := by
--                       have : ∀ s > 0, (Sₙ a) = proj_pos ( (pinch σₙ ρₙ)^s - exp(n*a*s) * σₙ^s ) := by
--                         -- commute_pinch_pincher ρₙ' and σₙ
--                         -- pow s on both sides (?)
--                         sorry
--                       -- have : commute σₙ (Sₙ a) :=
--                       --   calc commute σₙ (Sₙ a) = commute σₙ ( proj_pos ( (pinch σₙ ρₙ) - exp(n*a) * σₙ ) ) : by
--                       --                             sorry -- rw [Sₙ]
--                       --                           = ( proj_pos ( commute σₙ (pinch σₙ ρₙ) - exp(n*a) * commute σₙ σₙ ) ) : by
--                       --                             sorry -- rw commute_of_proj_pos
--                       --                           = ( proj_pos (0 - 0) ) : by
--                       --                             sorry -- rw [commute_pinch_pincher, commute_self]
--                       --                           = 0 : by
--                       --                             sorry -- rw [proj_pos_of_zero]
--                       sorry
--                 = exp(n*a*s) * ( Tr[(pinch σₙ ρₙ)^{1-s} * σₙ^s] - Tr[(pinch σₙ ρₙ)^{1-s} * σₙ^s * (Sₙ a)] ) : by
--                   sorry -- linarith
--                 ≤ exp(n*a*s) * Tr[(pinch σₙ ρₙ)^{1-s} * σₙ^s] : by
--                   sorry -- w/o neg term
--                 = exp(n*a*s) * Tr[(pinch σₙ ρₙ) * (pinch σₙ ρₙ)^{-s} * σₙ^{s/2} * σₙ^{s/2}] : by
--                   sorry -- linarith
--                 = exp(n*a*s) * Tr[(pinch σₙ ρₙ) * σₙ^{s/2} * (pinch σₙ ρₙ)^{-s} * σₙ^{s/2}] : by
--                   sorry -- rw [commute_pinch_pincher]
--                 = exp(n*a*s) * Tr[ρₙ * σₙ^{s/2} * (pinch σₙ ρₙ)^{-s} * σₙ^{s/2}] : by
--                   sorry -- (14) -- rw tr_of_pinch
--                 ≤ ν(σₙ)^s * exp(n*a*s) * Tr[ρₙ * σₙ^{s/2} * ρₙ^{-s} * σₙ^{s/2}] : by
--                   sorry -- le_pinch
--                 ≤ (n + 1)^{s*d} * exp(-n * [ψ(s) - a*s]) : by
--                   sorry -- rw [card_of_evectors_le]


/-

                o                                ඌ
               /|\                              /|\
               / \                              / \

              error αₙ of test Sₙ vanishes for large n

-/
-- lemma error_αₙ_of_test_Sₙ_for_large_n :
--     lim at_top, αₙ(Sₙ a) = 0 := by
--   -- lim n→∞ of error_αₙ_of_test_Sₙ_le
--   -- exponent > max0≤s≤1 { -a*s + ψ(s) } > 0
--   sorry


-- /-- Thm 3 β (18): 1/n log βₙ(Sₙ a) ≤ -a -/
-- theorem error_βₙ_of_test_Sₙ_le { n } :
--     βₙ(Sₙ a) ≤ exp(-n*a) := by
--   have : ((pinch σₙ ρₙ) − exp(n*a) * σₙ) Sₙ(a) ≥ 0 := by
--     sorry -- def of S
--   have : (pinch σₙ ρₙ) Sₙ(a) exp(-na) ≥ σₙ Sₙ(a) := by
--     sorry -- rw this
--   calc βₙ(Sₙ a) = Tr[σₙ * (Sₙ a)] : by
--                   sorry -- rw [β]
--                 ≤ Tr[(pinch σₙ ρₙ) Sₙ(a) exp(-n*a)] : by
--                   sorry -- rw [this]
--                 = exp(-n*a) * Tr[(pinch σₙ ρₙ) * (Sₙ a)] : by
--                   sorry -- rw [tr_smul]
--                 ≤ exp(-n*a) : by
--                   sorry -- rw [tr_le_one]


-- lemma error_βₙ_of_test_Sₙ_for_large_n { a > D(ρ||σ) } :
--     limsup at_top, 1/n * log βₙ(Aₙ) ≤ -D(ρ||σ) := by
--   -- rw [limsup n→∞ of error_βₙ_of_test_Sₙ_le]
--   sorry
