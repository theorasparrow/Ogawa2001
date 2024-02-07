-- import data.complex.basic
-- import analysis.inner_product_space.basic
-- import linear_algebra.tensor_power
-- import order.liminf_limsup
-- import analysis.special_functions.complex.log

-- open real filter

-- open_locale tensor_product big_operators



-- class state {n : ℕ} (ρ : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n :=
-- (trace_one : Tr ρ = 1)
-- (pos_semidef : pos_semidef ρ)


/- Quantum relative entropy: "distance" between state ρ and state σ -/
-- def D(ρ||σ) := Tr[ρ (log ρ - log σ)]
