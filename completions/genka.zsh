if [[ ! -o interactive ]]; then
    return
fi

compctl -K _genka genka

_genka() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(genka commands)"
  else
    completions="$(genka completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
