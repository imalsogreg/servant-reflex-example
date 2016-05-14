{-# LANGUAGE DataKinds, TypeOperators #-}
module API where 

import Servant.API

type API = "a":>"b":> Get '[JSON] String

