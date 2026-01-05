{ pkgs, ... }:
{
  home.packages = with pkgs; [
    rust-analyzer # Lsp for rust
    nil # Lsp for nix
    lua-language-server # Lsp for lua
    nixfmt-rfc-style # Formatter for nix
    taplo # Formatter for toml
    vscode-langservers-extracted # Lsp for HTML/CSS/JSON/ESLint
    pyright # for Python LSP
    stylua # Lua formatter
    tree-sitter # parser generator
    ast-grep # Fast and polyglot tool for code searching, linting, rewriting at large scale
    shfmt # Shell parser and formatter
  ];
}
