module Db
  ( DbUsr (..),
    getUserStore,
    insertUser,
    deleteUser,
    mkDb,
    UserStore (..),
  )
where

    import Data.IORef
    import Data.List (sort)
    import Data.Map (Map)
    import qualified Data.Map as Map
    import Data.Text (Text)

    data DbUsr = DbUsr 
      { dbUsrName :: Text,
        dbUsrPassword :: Text
      }
      deriving (Show)

    newtype UserStore = UserStore {unUsrStore :: IORef(Map Int DbUsr)}

    