#! bin/sh

# Install vscode extensions
cat vscode-extensions | while IFS= read -r line || [[ -n "$line" ]]; do
    code --install-extension $line
done