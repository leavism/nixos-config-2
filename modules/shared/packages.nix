{ pkgs }:

with pkgs; [
  # General packages for development and system management

  # Encryption and security tools
  age
  age-plugin-yubikey

  # Media-related packages
  nerd-fonts.geist-mono

  # Node.js development tools
  nodePackages.npm # globally install npm
  nodePackages.prettier
  nodejs

  # Text and terminal utilities
  jetbrains-mono
  jq
  ripgrep
  tree
  tmux
]
