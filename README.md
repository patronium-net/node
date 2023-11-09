# create key
eth2-val-tools keystores\
    --insecure --prysm-pass="prysm"\
    --out-loc=/tmp/validator-output\
    --source-max=64\
    --source-min=0\
    --source-mnemonic="$EL_AND_CL_MNEMONIC"
