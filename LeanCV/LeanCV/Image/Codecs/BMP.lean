import LeanCV.Image.Codecs.Codec
import LeanCV.Image.Image
import SciLean.Data.DataArray.DataArray

structure BMP where

def BMP.encode (image : Image (w : Nat) (h : Nat)) (handle : IO.FS.Handle) : IO Unit := do
  handle.write (ByteArray.mk #[0])

def BMP.decode (handle : IO.FS.Handle) : Σ (w : Nat) (h : Nat), Image w h :=
  ⟨2, 2, ({data := ⊞[1, 1; 1, 1]} : Image 2 2)⟩

instance : Codec BMP where
  encode := BMP.encode
  decode := BMP.decode

-- #eval (get_image (BMP.decode 1)).data
