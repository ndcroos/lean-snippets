/-
Similarly, declare a constant matrix so that matrix α m n could represent the type of m by n matrices. 
Declare some constants to represent functions on this type, such as matrix addition and multiplication, and (using vec) multiplication of a matrix by a vector. Once again, declare some variables and check some expressions involving the constants that you have declared.
-/

universe u
constant mat : Type u → ℕ → Type u

namespace mat
  constant add :
    Π (α : Type u) (m : ℕ) (n : ℕ), mat α m n → mat α m n → mat α m n
  /- Multiply matrix with a vector. -/
  const mult :
    Π (α : Type u) (m : ℕ) (n : ℕ), mat α m n →  vec α n → vec α b
end mat

