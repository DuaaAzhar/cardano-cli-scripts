./cardano-cli transaction build \
--alonzo-era \
--${TESTNET_MAGIC} \
--change-address $(cat priv/payment.addr) \
--tx-in 7f3895fc14722b2efa8b161d1408c13111bff6f9662e6a3594db614aef719c35#0 \
--tx-out $(cat fortyTwo.addr)+2000000 \
--tx-out-datum-hash ${scriptdatumhash} \
--protocol-params-file pparams.json \
--out-file tx-script.build

./cardano-cli transaction sign \
--tx-body-file tx-script.build \
--signing-key-file priv/payment.skey \
--${TESTNET_MAGIC} \
--out-file tx-script.signed

./cardano-cli transaction submit --${TESTNET_MAGIC} --tx-file tx-script.signed
 
