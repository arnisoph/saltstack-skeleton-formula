formula_git_name="$(git rev-parse --show-toplevel)"
formula_git_name=${formula_git_name##*/}

#########################################

export \
  BOX_NAME=${formula_git_name} \
  BOX_PRIV_KEY=../../vagrant-devenv/shared/keys/id_rsa \
  BOX_BASE=../../vagrant-devenv/shared/boxes/DEV_Debian_78_min-virtualbox-v0.3-6-g9d6df6b.box
