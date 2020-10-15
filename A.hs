{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE DataKinds #-}
module A (s) where

import Data.Proxy
import B

s = f (Proxy :: Proxy Y)

class C (ds :: D) where
  f :: Proxy ds -> String

instance C 'Y where
  f _ = "s"
