# --- System Specific ---

# Copy/Paste via CLI
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


# --- Python Specific ---

# Always refer python three
alias python='python3'

# Release PyPI Package
alias release='python setup.py sdist bdist_wheel && twine upload dist/* && rm -rf dist'
