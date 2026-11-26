import Mathlib
import PEqualNP.Defs

theorem PEqualNP.Outside.R_meta_4043_728
    (hpoint : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 : Fin (26 : ℕ)), (↑x2 : ℕ) < (13 : ℕ) → PEqualNP.MetaComplexity.Monotone2 x1 → (∀ (x4 : Fin (26 : ℕ) → Bool), x4 x2 = Bool.false → (x1.eval (List.ofFn x4) = Bool.true ↔ ∃ (x6 : Fin (13 : ℕ)) (x7 : Fin (13 : ℕ)), (x6 = x7 ∨ x6 = x7 + (1 : Fin (13 : ℕ)) ∨ x6 = x7 + (3 : Fin (13 : ℕ)) ∨ x6 = x7 + (9 : Fin (13 : ℕ))) ∧ x4 (Fin.castAdd (13 : ℕ) x6) = Bool.true ∧ x4 (Fin.natAdd (13 : ℕ) x7) = Bool.true)) → (58 : ℕ) ≤ x1.size)
    (hline : ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 : Fin (26 : ℕ)), (13 : ℕ) ≤ (↑x2 : ℕ) → PEqualNP.MetaComplexity.Monotone2 x1 → (∀ (x4 : Fin (26 : ℕ) → Bool), x4 x2 = Bool.false → (x1.eval (List.ofFn x4) = Bool.true ↔ ∃ (x6 : Fin (13 : ℕ)) (x7 : Fin (13 : ℕ)), (x6 = x7 ∨ x6 = x7 + (1 : Fin (13 : ℕ)) ∨ x6 = x7 + (3 : Fin (13 : ℕ)) ∨ x6 = x7 + (9 : Fin (13 : ℕ))) ∧ x4 (Fin.castAdd (13 : ℕ) x6) = Bool.true ∧ x4 (Fin.natAdd (13 : ℕ) x7) = Bool.true)) → (58 : ℕ) ≤ x1.size) :
    ∀ (x1 : PEqualNP.CircuitLowerBounds.Circuit) (x2 : Fin (26 : ℕ)), PEqualNP.MetaComplexity.Monotone2 x1 → (∀ (x4 : Fin (26 : ℕ) → Bool), x4 x2 = Bool.false → (x1.eval (List.ofFn x4) = Bool.true ↔ ∃ (x6 : Fin (13 : ℕ)) (x7 : Fin (13 : ℕ)), (x6 = x7 ∨ x6 = x7 + (1 : Fin (13 : ℕ)) ∨ x6 = x7 + (3 : Fin (13 : ℕ)) ∨ x6 = x7 + (9 : Fin (13 : ℕ))) ∧ x4 (Fin.castAdd (13 : ℕ) x6) = Bool.true ∧ x4 (Fin.natAdd (13 : ℕ) x7) = Bool.true)) → (58 : ℕ) ≤ x1.size := by
  intro C v
  rcases Nat.lt_or_ge (v : ℕ) 13 with h | h
  · exact hpoint C v h
  · exact hline C v h
