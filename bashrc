# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Default Editor
EDITOR="vim"
export EDITOR

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Export /usr/bin before /usr/local/bin to avoid local
# installation of gcc
export PATH="/usr/bin/:$PATH"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#export VULKAN_SDK=$HOME/vulkan/1.2.154.0/x86_64
#export VK_LAYER_PATH=$VULKAN_SDK/etc/vulkan/explicit_layer.d
#export LLVM_HOME="/home/navdeep/work/projects/llvm-project"
export MCL_LLVM_HOME="/home/navdeep/work/GPU_GEMM/llvm-project-mcl/"
#export CUTLASS_HOME="/home/navdeep/work/cutlass/cutlass"
export GPU_HOME="/home/navdeep/work/GPU_GEMM/gpu_gemms"
#export PATH="/home/navdeep/llvm-install/bin:$PATH"
export PATH="/home/navdeep/work/GPU_GEMM/llvm-project-mcl/build/bin:$PATH"
#export PATH="/home/navdeep/work/projects/iree/build/iree/tools:$PATH"
export PATH="/home/navdeep/Downloads/clangd/clangd-linux-10.0.0/clangd_10.0.0/bin:$PATH"
export PATH="/home/navdeep/Downloads/phabricator/arcanist/bin:$PATH"
export PATH="/home/navdeep/Downloads/clang-format:$PATH"
export PATH="/home/navdeep/NVIDIA-Nsight-Compute-2020.1:$PATH"
export PATH=$VULKAN_SDK/bin:$PATH
export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}$ 
export PATH="/home/navdeep/Downloads/cmake-3.17.3-Linux-x86_64/bin:$PATH"
export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=/home/navdeep/Downloads/clangd/clangd-linux-10.0.0/clangd_10.0.0/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=$VULKAN_SDK/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Aliases to prevent disasters
alias rm='rm -i'
alias cp='cp -i'
alias buildMLIR='cmake --build $MCL_LLVM_HOME/build'

# For libtinfo.so.5
# export LD_LIBRARY_PATH=/usr/local/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# For libtensorflow
# export LIBRARY_PATH=$LIBRARY_PATH:/home/navdeep/Downloads/libtensorflow/libtf/lib
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/navdeep/Downloads/libtensorflow/libtf/lib


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/navdeep/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/navdeep/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/navdeep/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/navdeep/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#export PATH="/home/navdeep/anaconda3/bin:/home/navdeep/anaconda3/condabin:/usr/local/cuda-10.2/bin:/home/navdeep/vulkan/1.2.154.0/x86_64/bin:/home/navdeep/NVIDIA-Nsight-Compute-2020.1:/home/navdeep/Downloads/clang-format:/home/navdeep/Downloads/phabricator/arcanist/bin:/home/navdeep/Downloads/clangd/clangd-linux-10.0.0/clangd_10.0.0/bin:/home/navdeep/Downloads/cmake-3.17.3-Linux-x86_64/bin:/home/navdeep/.local/bin:/home/navdeep/bin:/usr/share/Modules/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin$:/home/navdeep/.fzf/bin"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
