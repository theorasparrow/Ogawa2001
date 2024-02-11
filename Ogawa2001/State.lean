-- import Ogawa2001.Util


-- open BigOperators NormedSpace Complex TensorProduct TensorPower -- Filter


-- variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]


-- class State (ρ : V →ₗ[ℂ] V) :=
-- (trace_one : Tr ρ = 1)
-- (nonneg : 0 ≤ ρ)


/- Quantum relative entropy: "distance" between state ρ and state σ -/
-- def D(ρ||σ) := Tr[ρ (log ρ - log σ)]


-- variable {W : Type*} [NormedAddCommGroup W] [InnerProductSpace ℂ W] [FiniteDimensional ℂ W] {ρ : W →ₗ[ℂ] W}

-- #check W
-- #check W →ₗ[ℂ] W
-- #check ρ
-- #check State
-- #check State ρ


-- instance : NormedAddCommGroup (TensorPower ℂ n W) := by sorry
-- instance : InnerProductSpace ℂ (TensorPower ℂ n W) := by sorry
-- instance : FiniteDimensional ℂ (TensorPower ℂ n W) := by sorry


-- variable {n : ℕ} {ρₙ : (TensorPower ℂ n W) →ₗ[ℂ] (TensorPower ℂ n W)}


-- #check (TensorPower ℂ n W)
-- #check (TensorPower ℂ n W) →ₗ[ℂ] (TensorPower ℂ n W)
-- #check ρₙ
-- #check State
-- #check State ρₙ
