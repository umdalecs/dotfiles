function auto_start_tmux {
  if command -v tmux &> /dev/null \
    && [[ -o interactive ]] \
    && [[ ! "$TERM" =~ (screen|tmux) ]] \
    && [[ -z "$TMUX" ]] \
    && [[ "$TERM_PROGRAM" != "vscode" ]]; then
    exec tmux new-session -A -s main
  fi
}
