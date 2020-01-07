if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/seonglae/.oh-my-zsh"
ZSH_THEME=powerlevel10k/powerlevel10k
plugins=( git
	dirhistory
	vscode
)
source $ZSH/oh-my-zsh.sh
export TERM=xterm-256color
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
