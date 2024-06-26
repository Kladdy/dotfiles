[ -n "$PS1" ] && source ~/.zsh_profile;

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sigge/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sigge/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sigge/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sigge/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias l="ls -lah"
alias sz="source ~/.zshrc"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export NJOY=$HOME/bin/NJOY2016/build/njoy
alias njoy=$NJOY

# export PATH="$HOME/bin/openmc/bin:$PATH" # OpenMP version
# export PATH="$HOME/bin/openmc-mpi/bin:$PATH" # MPI version
export PATH=/Users/sigge/bin/openmc-0.14.0-openmp/bin:$PATH

# Cross sections
# export OPENMC_CROSS_SECTIONS="$HOME/nuclear_data/hdf5/jeff-3.3-hdf5"
export OPENMC_CROSS_SECTIONS="$HOME/nuclear_data/hdf5/endfb-vii.1-hdf5/cross_sections.xml"
#export OPENMC_CROSS_SECTIONS="$HOME/nuclear_data/hdf5/nndc_hdf5/cross_sections.xml"

# Depletion chain
# export OPENMC_DEPLETION_CHAIN="$HOME/nuclear_data/hdf5/endfb-vii.1-hdf5/chain_endfb71_pwr.xml"
export OPENMC_DEPLETION_CHAIN="$HOME/nuclear_data/hdf5/Simplified chain/chain_casl_pwr.xml"

# ENDF data
export OPENMC_ENDF_DATA="$HOME/nuclear_data/endf/endf-b-vii.1"

eval "$(zoxide init zsh --cmd cd)"

alias ".."="cd .."