{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell rec {
  buildInputs = [
    pkgs.neovim
    pkgs.ripgrep
    pkgs.fd
    pkgs.curl
    pkgs.git
    pkgs.tmux
  ];

  shellHook = ''
    export XDG_CONFIG_HOME=${toString ./config}

    set lazypath $HOME/.local/share/nvim/lazy/lazy.nvim

    if not test -d "$lazypath"
      echo "Installing Lazy.nvim..."
      git clone --depth 1 https://github.com/folke/lazy.nvim $lazypath
    end

    if test -d "$lazypath"
      echo "Lazy.nvim found, checking plugins..."
      nvim --headless +Lazy! +qa
    end
  '';
}