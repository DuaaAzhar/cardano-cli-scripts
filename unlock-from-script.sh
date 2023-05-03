./cardano-cli transaction build \
--alonzo-era \
--${TESTNET_MAGIC} \
--tx-in ${plutusutxotxin} \
--tx-in-script-file fortyTwo.plutus \
--tx-in-datum-value 0 \
--tx-in-redeemer-value 42 \
--tx-in-collateral ${txCollateral} \
--change-address $(cat priv/payment.addr) \
--protocol-params-file pparams.json \
--out-file test-alonzo.tx


./cardano-cli transaction sign \
--tx-body-file test-alonzo.tx \
--signing-key-file priv/payment.skey \
--${TESTNET_MAGIC} \
--out-file test-alonzo.signed

./cardano-cli transaction submit --${TESTNET_MAGIC} --tx-file test-alonzo.signed 

