#!/bin/sh
# Discord RPC
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i || ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

declare -a EXTRA_FLAGS=()

cd /app/lib/vesktop
export TMPDIR="$XDG_CACHE_HOME"
exec zypak-wrapper ./vencorddesktop "${EXTRA_FLAGS[@]}" "$@"
