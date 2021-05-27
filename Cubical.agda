{-# OPTIONS --cubical #-}

open import Level
open import Agda.Primitive.Cubical using (I;i0;i1;primINeg;primTransp)

postulate Path : ∀ {l} (A : I → Set l) -> A i0 -> A i1 -> Set l

{-# BUILTIN PATHP Path #-}

_≡_ : ∀ {l} {A : Set l} → A → A → Set l
_≡_ {l} {A} a b = Path (λ _ → A) a b

refl : ∀ {l} {A : Set l} (a : A) → a ≡ a
refl a _ = a

sym : ∀ {l} {A : Set l} {a b : A} → a ≡ b → b ≡ a
sym a≡b i = a≡b (primINeg i)

ap : ∀ {l} {m} {A : Set l} {B : Set m}
  {a b : A} (f : A → B) → a ≡ b → f a ≡ f b
ap f p i = f (p i)

transport : ∀ {l} (A : I → Set l) → A i0 → A i1
transport A a = primTransp A i0 a

subst : ∀ {l} {m} (A : Set l) (P : A → Set m) (a b : A) → a ≡ b → P a → P b
subst A P a b a≡b Pa = transport (λ i → P (a≡b i)) Pa

funext : ∀ {l} {m} {A : Set l} {B : A → Set m}
  (f g : ∀ x → B x) → (∀ x → f x ≡ g x) → f ≡ g
funext _ _ fisg i x = fisg x i

data Σ {l} {m} (A : Set l) (B : A → Set m) : Set (l ⊔ m) where
  _,_ : ∀ a → B a → Σ A B

infix 80 _₁
_₁ : ∀ {l} {m} {A : Set l} {B : A → Set m} → Σ A B → A
(a , b) ₁ = a

infix 80 _₂
_₂ : ∀ {l} {m} {A : Set l} {B : A → Set m} (p : Σ A B) → B (p ₁)
(a , b) ₂ = b

Σeq : ∀ {l} {m} {A : Set l} {B : A → Set m}
  (s t : Σ A B) (p : s ₁ ≡ t ₁) → Path (λ i → B (p i)) (s ₂) (t ₂) →
  s ≡ t
Σeq (_ , _) (_ , _) p q = λ i → p i , q i

isProp : ∀ {l} → Set l → Set l
isProp A = ∀ (x y : A) → x ≡ y

propPi : ∀ {l} {m} (A : Set l) (B : A → Set m) →
  (∀ x → isProp (B x)) → isProp (∀ x → B x)
propPi A B h = λ f g i a → h a (f a) (g a) i
