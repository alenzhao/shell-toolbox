#!/bin/sh

show_usage () {
cat <<USAGE_END
Usage:

    $0 -s N [-c N|-k] [-m N] ["cmd" | -p N]
    $0 -h

Options:

    -h      Output this help text and terminate.

    -s N    Send the STOP signal to "cmd" if the average system load
            goes above N.

    -c N    Send the CONT signal to "cmd" once the average system load
            goes below N.

    -k      Send the TERM signal to "cmd" rather than the STOP/CONT
            signals.

    -m N    Monitor "cmd" every N seconds.

    "cmd"   The command to run and monitor.

    -p N    A process ID to monitor instead of running "cmd".

USAGE_END
}

opt_s=3     # max load
opt_c=2     # min load
opt_k=0     # kill
opt_m=30    # monitor this often

while getopts 's:c:km:p:h' opt; do
    case $opt in
        s)  opt_s="$OPTARG" ;;
        c)  opt_c="$OPTARG" ;;
        k)  opt_k=1     ;;
        m)  opt_m="$OPTARG" ;;
        p)  opt_p="$OPTARG" ;;
        h)  usage; exit 0   ;;
        *)  usage; exit 1   ;;
    esac
done
shift $(( OPTIND - 1 ))

cmd="$1"

if [[ -z $cmd && -z $opt_p ]]; then
    echo 'Expected "cmd" or "-p N"'
    exit 1
elif [[ -z $opt_p ]]; then
    $cmd & cmd_pid=$!
else
    cmd_pid="$opt_p"
fi

while true; do
    sleep
done
