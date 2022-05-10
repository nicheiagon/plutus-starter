```
Linking /home/niko/projects/plutus-starter/dist-newstyle/build/x86_64-linux/ghc-8.10.4.20210212/plutus-starter-0.1.0.0/t/plutus-example-projects-test/build/plutus-example-projects-test/plutus-example-projects-test ...
Running 1 test suites...
Test suite plutus-example-projects-test: RUNNING...
Use cases
  Basic storage use-cases
    Should fail to update file has with same name: FAIL (0.04s)
      Transactions failed to validate:
      4736d330a364c558bbd4804456cbec0ebdf1380cdc35997187de908cbf6b4cc8: ScriptFailure (EvaluationError ["BOOM FAIL","PT5"] "CekEvaluationFailure")
      Test failed.
      Emulator log:
      [INFO] Slot 0: TxnValidate ef0ca0fb043642529818003be5a6cac88aac499e4f8f1cbc3bdb35db2b7f6958
      [INFO] Slot 1: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Contract instance started
      [INFO] Slot 1: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Receive endpoint call on 'create' for Object (fromList [("contents",Array [Object (fromList [("getEndpointDescription",String "create")]),Object (fromList [("unEndpointValue",Array [])])]),("tag",String "ExposeEndpointResp")])
      [INFO] Slot 1: W[1]: Balancing an unbalanced transaction:
                             Tx:
                               Tx 4283e28605dc5da5213060c1191ec786b8327fdb35c1311c452e9d3f8283ebda:
                                 {inputs:
                                 collateral inputs:
                                 outputs:
                                   - Value (Map [(,Map [("",10000000)])]) addressed to
                                     ScriptCredential: e02cf0244f522772b21d6bbcc13b29808e63132bbd781759c53be522 (no staking credential)
                                 mint: Value (Map [])
                                 fee: Value (Map [])
                                 mps:
                                 signatures:
                                 validity range: Interval {ivFrom = LowerBound NegInf True, ivTo = UpperBound PosInf True}
                                 data:
                                   <>}
                             Requires signatures:
                             Utxo index:
                             Validity range:
                               (-∞ , +∞)
      [INFO] Slot 1: W[1]: Finished balancing:
                             Tx 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2:
                               {inputs:
                                  - ef0ca0fb043642529818003be5a6cac88aac499e4f8f1cbc3bdb35db2b7f6958!50
      
                                  - ef0ca0fb043642529818003be5a6cac88aac499e4f8f1cbc3bdb35db2b7f6958!51
      
                               collateral inputs:
                                 - ef0ca0fb043642529818003be5a6cac88aac499e4f8f1cbc3bdb35db2b7f6958!50
      
                               outputs:
                                 - Value (Map [(,Map [("",9999420)])]) addressed to
                                   PubKeyCredential: a2c20c77887ace1cd986193e4e75babd8993cfd56995cd5cfce609c2 (no staking credential)
                                 - Value (Map [(,Map [("",10000000)])]) addressed to
                                   ScriptCredential: e02cf0244f522772b21d6bbcc13b29808e63132bbd781759c53be522 (no staking credential)
                               mint: Value (Map [])
                               fee: Value (Map [(,Map [("",580)])])
                               mps:
                               signatures:
                               validity range: Interval {ivFrom = LowerBound NegInf True, ivTo = UpperBound PosInf True}
                               data:
                                 <>}
      [INFO] Slot 1: W[1]: Signing tx: 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2
      [INFO] Slot 1: W[1]: Submitting tx: 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2
      [INFO] Slot 1: W[1]: TxSubmit: 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2
      [INFO] Slot 1: TxnValidate 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2
      [INFO] Slot 2: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Contract log: String "Created BOOM"
      [INFO] Slot 2: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Receive endpoint call on 'updateFile' for Object (fromList [("contents",Array [Object (fromList [("getEndpointDescription",String "updateFile")]),Object (fromList [("unEndpointValue",Array [])])]),("tag",String "ExposeEndpointResp")])
      [INFO] Slot 2: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Contract log: String "UPDATE CALLED"
      [INFO] Slot 2: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Contract log: String "COMMITTING TRANSACTION"
      [INFO] Slot 2: W[1]: Balancing an unbalanced transaction:
                             Tx:
                               Tx ac5870efa8c8490afa43631e6f938ee81ccba0a4464dc0c1e93ccbe147129921:
                                 {inputs:
                                    - 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2!1
                                      <10000000>
                                 collateral inputs:
                                 outputs:
                                 mint: Value (Map [])
                                 fee: Value (Map [])
                                 mps:
                                 signatures:
                                 validity range: Interval {ivFrom = LowerBound NegInf True, ivTo = UpperBound PosInf True}
                                 data:
                                   <>}
                             Requires signatures:
                             Utxo index:
                               ( 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2!1
                               , - Value (Map [(,Map [("",10000000)])]) addressed to
                                   ScriptCredential: e02cf0244f522772b21d6bbcc13b29808e63132bbd781759c53be522 (no staking credential) )
                             Validity range:
                               (-∞ , +∞)
      [INFO] Slot 2: W[1]: Finished balancing:
                             Tx 4736d330a364c558bbd4804456cbec0ebdf1380cdc35997187de908cbf6b4cc8:
                               {inputs:
                                  - 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2!1
                                    <10000000>
                               collateral inputs:
                                 - 21f12ca3d94a8bbfca309d3eee7b6cc6c025c8981232305fb5db9028105f29f2!0
      
                               outputs:
                                 - Value (Map [(,Map [("",8699797)])]) addressed to
                                   PubKeyCredential: a2c20c77887ace1cd986193e4e75babd8993cfd56995cd5cfce609c2 (no staking credential)
                               mint: Value (Map [])
                               fee: Value (Map [(,Map [("",1300203)])])
                               mps:
                               signatures:
                               validity range: Interval {ivFrom = LowerBound NegInf True, ivTo = UpperBound PosInf True}
                               data:
                                 <>}
      [INFO] Slot 2: W[1]: Signing tx: 4736d330a364c558bbd4804456cbec0ebdf1380cdc35997187de908cbf6b4cc8
      [INFO] Slot 2: W[1]: Submitting tx: 4736d330a364c558bbd4804456cbec0ebdf1380cdc35997187de908cbf6b4cc8
      [INFO] Slot 2: W[1]: TxSubmit: 4736d330a364c558bbd4804456cbec0ebdf1380cdc35997187de908cbf6b4cc8
      [INFO] Slot 2: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Contract log: String "SHOULD NOT GET HERE"
      [WARNING] Slot 2: TxnValidationFail Phase2 4736d330a364c558bbd4804456cbec0ebdf1380cdc35997187de908cbf6b4cc8: ScriptFailure (EvaluationError ["BOOM FAIL","PT5"] "CekEvaluationFailure")
      [INFO] Slot 3: 00000000-0000-4000-8000-000000000000 {Wallet W[1]}:
                       Contract log: String "DEFINITELY SHOULD NOT GET HERE"
        src/Plutus/Contract/Test.hs:300:
        Should fail to update file has with same name

1 out of 1 tests failed (0.04s)
Test suite plutus-example-projects-test: FAIL
```
