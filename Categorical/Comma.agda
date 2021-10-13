{-# OPTIONS --safe --without-K #-}

open import Level

open import Categorical.Raw
open import Categorical.Equiv
open import Categorical.Laws as L hiding (Category; Cartesian)
open import Categorical.Homomorphism

module Categorical.Comma
   {o₀}{obj₀ : Set o₀} {ℓ₀} (_⇨₀_ : obj₀ → obj₀ → Set ℓ₀) ⦃ _ : Category _⇨₀_ ⦄
   {o₁}{obj₁ : Set o₁} {ℓ₁} (_⇨₁_ : obj₁ → obj₁ → Set ℓ₁) ⦃ _ : Category _⇨₁_ ⦄ 
   {o₂}{obj₂ : Set o₂} {ℓ₂} (_⇨₂_ : obj₂ → obj₂ → Set ℓ₂) ⦃ _ : Category _⇨₂_ ⦄
   {q₀} ⦃ _ : Equivalent q₀ _⇨₀_ ⦄ ⦃ _ : L.Category _⇨₀_ ⦄
   {q₁} ⦃ _ : Equivalent q₁ _⇨₁_ ⦄ ⦃ _ : L.Category _⇨₁_ ⦄
   {q₂} ⦃ _ : Equivalent q₂ _⇨₂_ ⦄ ⦃ _ : L.Category _⇨₂_ ⦄
   ⦃ _ : Homomorphismₒ obj₁ obj₀ ⦄ ⦃ _ : Homomorphism _⇨₁_ _⇨₀_ ⦄
     ⦃ _ : CategoryH _⇨₁_ _⇨₀_ ⦄
   ⦃ _ : Homomorphismₒ obj₂ obj₀ ⦄ ⦃ _ : Homomorphism _⇨₂_ _⇨₀_ ⦄
     ⦃ _ : CategoryH _⇨₂_ _⇨₀_ ⦄
 where

-- Comma.Type and Comma.Raw are re-exported by Comma.Homomorphism
open import Categorical.Comma.Homomorphism _⇨₀_ _⇨₁_ _⇨₂_ public

