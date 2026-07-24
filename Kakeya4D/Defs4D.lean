import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Measure.Lebesgue.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# DEFINICIONES PARA KAKEYA EN ℝ⁴
-/

open MeasureTheory Set Real

variable {δ : ℝ} (hδ : 0 < δ)

/-- Un tubo en ℝ⁴ de radio δ y longitud 1. -/
structure Tube4D where
  direction : EuclideanSpace ℝ (Fin 4)
  center : EuclideanSpace ℝ (Fin 4)
  radius : ℝ := δ
  length : ℝ := 1

/-- Volumen de un tubo en ℝ⁴: |T| = π²/2 * δ⁴. -/
noncomputable def tube_volume_4d (T : Tube4D) : ℝ :=
  (Real.pi^2 / 2) * T.radius^4 * T.length

/-- Conjunto de Kakeya en ℝ⁴. -/
def IsKakeya4D (K : Set (EuclideanSpace ℝ (Fin 4))) : Prop :=
  ∀ v : EuclideanSpace ℝ (Fin 4), ‖v‖ = 1 →
    ∃ x : EuclideanSpace ℝ (Fin 4), ∀ t ∈ Set.Icc 0 1, x + t • v ∈ K