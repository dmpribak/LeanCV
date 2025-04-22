import SciLean.Data.DataArray.DataArray

structure Image (width : Nat) (height : Nat) where
  data : UInt16^[width, height]
-- def array : SciLean.DataArrayN UInt8 (Fin 2) := ⊞[(2 : UInt8), (3 : UInt8)]
-- def array : UInt16^[1] := ⊞[(2 : UInt16)]
-- def array2 : Float^[2] := ⊞[2.0,3.0]
-- #eval array[0]
-- #eval array2[0]

def get_image (witness : Σ (w : Nat) (h : Nat), Image w h) : Image witness.1 witness.2.1 :=
  witness.2.2
