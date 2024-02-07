-- variables
-- (ρ : ℋ^⨂1 →ₗ[ℂ] ℋ^⨂1) [quantum_state ρ]
-- (σ : ℋ^⨂1 →ₗ[ℂ] ℋ^⨂1) [quantum_state σ]




/- Probability of error of test: indicates σₙ when actually ρₙ -/
-- noncomputable def αₙ {n : ℕ} (Aₙ : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n) := Tr(ρ^⊗n * (1 - Aₙ))


/- Probability of error of test: indicates ρₙ when actually σₙ -/
-- noncomputable def βₙ {n : ℕ} (Aₙ : ℋ^⨂n →ₗ[ℂ] ℋ^⨂n) := Tr[σ^⊗n * Aₙ]
