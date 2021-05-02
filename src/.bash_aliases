# --- System ---

# Copy/Paste via CLI
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


# --- Python ---

# Always refer python three
alias python='python3'

# Release PyPI Package
alias release='python setup.py sdist bdist_wheel && twine upload dist/* && rm -rf dist'


# --- Git ---

# Show a delailed history graph of the git repo
alias gittree="git log --graph \
               --abbrev-commit \
               --decorate --all \
               --date=format:'%d-%m-%Y %H:%M' \
               --format=format:'%C(blue)%ad%C(reset) %C(yellow)%h%C(reset) %C(white)%s%C(reset) %C(blue)%an%C(reset) %C(bold yellow)%d%C(reset)'"
