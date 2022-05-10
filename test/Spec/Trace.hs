{-# LANGUAGE DataKinds #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}

module Spec.Trace where

import Data.Functor
import Data.Monoid
import Data.Text
import Ledger (ScriptError (EvaluationError), ValidationError (ScriptFailure))
import qualified Ledger.Ada as Ada
import Plutus.Contract
import Plutus.Contract.Test
import qualified Plutus.Trace.Emulator as Trace
import Plutus.Trace.Emulator.Types (ContractInstanceTag)
import Test.Tasty
import Wallet.API (WalletAPIError (ValidationError))
import Ledger.Index (ScriptValidationEvent)
import Ledger (Tx)
import Plutus.Trace.Emulator (EmulatorTrace, getContractState)
import qualified Plutus.Trace.Emulator as Emulator
import MyModule

t1, t2 :: ContractInstanceTag
t1 = Trace.walletInstanceTag w1
t2 = Trace.walletInstanceTag w2

tests :: TestTree
tests =
  testGroup
    "Basic storage use-cases"
    [ checkPredicate
        "Should fail to update file has with same name"
        (
           assertContractError endpoints t1 (scriptErrorPredicate "BOOM FAIL") "should fail during validation process"
            -- .&&. assertAccumState theContract t1 ((Last $ Just $ CreatedFile "some-file-hash-1") ==) "Final state for w1 should be CreatedFile"
        )
        $ do
          hd1 <- Trace.activateContractWallet w1 endpoints
          Trace.callEndpoint @"create" hd1 ()
          void $ Trace.waitNSlots 1
          Trace.callEndpoint @"updateFile" hd1 ()
          void $ Trace.waitNSlots 1
--          void $ getContractState hd1
    ]

scriptErrorPredicate :: Text -> ContractError -> Bool
scriptErrorPredicate errorMsg failure = isInfixOf errorMsg $ pack . show  $ failure
scriptErrorPredicate _ _ = False

--transactionFailedPredicate :: Text -> Tx -> ValidationError -> [ScriptValidationEvent] -> Bool
--transactionFailedPredicate errorMsg _ (ScriptFailure (EvaluationError allErrors _)) _ = errorMsg `elem` allErrors
--transactionFailedPredicate _ _ _ _ = False
