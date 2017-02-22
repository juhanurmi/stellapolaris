mkdir ~/tor-finland/
cp torrc ~/tor-finland/
cp tor-service-defaults-torrc ~/tor-finland/

tor --defaults-torrc ~/tor-finland/tor-service-defaults-torrc -f ~/tor-finland/torrc --datadirectory ~/tor-finland/
