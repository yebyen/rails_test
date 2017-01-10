#!/usr/bin/env bash
# wupiau ( Wait Until Postgres Is Actually Up )
# credit to CoreOS's wupiao for the naming

retries=10

for ((i=0; i<retries; i++)); do
    nc localhost 5432 -q 5 << EOF
EOF
    [[ $? -eq 0 ]] && break

    echo "something went wrong, let's wait 5 seconds and retry"
    sleep 5
done

[[ $retries -eq i ]] && { echo "Failed!"; exit 1; }
exit 0  # We made it!  Postgres server is listening
