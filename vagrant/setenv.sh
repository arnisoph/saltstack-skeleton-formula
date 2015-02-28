[[ -e .env ]] && source .env

if [[ -z "$box_name" ]]; then
  formula_git_name="$(git rev-parse --show-toplevel)"
  formula_git_name=${formula_git_name##*/}
  export BOX_NAME=${formula_git_name}
else
  export BOX_NAME=${box_name}
fi

if [[ -z "$box_base_path" ]]; then
  export BOX_BASE_PATH=${box_base_path}
else
  export BOX_BASE_PATH=${box_base_path}
fi

#BOX_PRIV_KEY=../../vagrant-devenv/shared/keys/id_rsa \
