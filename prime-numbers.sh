# create a script that prints all prime numbers between 1 and 100

#!/bin/bash
is_prime() {
    local num=$1
    if (( num < 2 )); then
        return 1
    fi
    for (( i = 2; i * i <= num; i++ )); do
        if (( num % i == 0 )); then
            return 1
        fi
    done
    return 0
}
for (( i = 1; i <= 100; i++ )); do
    if is_prime $i; then
        echo $i
    fi
done