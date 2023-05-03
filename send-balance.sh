./cardano-cli transaction build \
--alonzo-era \
--${TESTNET_MAGIC} \
--change-address $(cat priv/payment.addr) \
--tx-in 7f3895fc14722b2efa8b161d1408c13111bff6f9662e6a3594db614aef719c35#0 \
--tx-out $(cat priv/payment2.addr)+1000000 \
--out-file tx.build


./cardano-cli transaction sign \
--tx-body-file tx.build \
--${TESTNET_MAGIC} \
--signing-key-file priv/payment.skey \
--out-file priv/tx.signed

./cardano-cli transaction submit --tx-file priv/tx.signed --${TESTNET_MAGIC}

