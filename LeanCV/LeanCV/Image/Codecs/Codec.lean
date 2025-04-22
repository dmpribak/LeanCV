import LeanCV.Image.Image

class Codec (_ : Type) where
  encode : Image (w : Nat) (h : Nat) → IO.FS.Handle → IO Unit
  decode : IO.FS.Handle → Σ (w : Nat) (h : Nat), Image w h
