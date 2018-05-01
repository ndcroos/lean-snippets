/-
Above, we used the example vec α n for vectors of elements of type α of length n. 
Declare a constant vec_add that could represent a function that adds two vectors of natural numbers of the same length, 
and a constant vec_reverse that can represent a function that reverses its argument. 
Use implicit arguments for parameters that can be inferred. 
Declare some variables and check some expressions involving the constants that you have declared.
-/

universe u
constant vec : Type u → ℕ → Type u

namespace vec
  constant empty : Π α : Type u, vec α 0
  constant cons :
    Π (α : Type u) (n : ℕ), α → vec α n → vec α (n + 1)
  constant append :
    Π (α : Type u) (n m : ℕ),  vec α m → vec α n → vec α (n + m)
  constant add :
    Π (α : Type u) (n : ℕ), vec α n → vec α n → vec α n
  const reverse :
    Π (α : Type u) (n : ℕ), vec α n → vec α n
end vec
