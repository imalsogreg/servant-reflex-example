
import Servant.Server
import Data.Proxy
import Network.Wai
import Network.Wai.Handler.Warp

import API (API)

server :: Server API
server = return "ciao"

userAPI :: Proxy API
userAPI = Proxy

app1 :: Application
app1 = serve userAPI server

main :: IO ()
main = run 8081 app1
