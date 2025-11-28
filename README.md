## Requirement

GCC for LazyVim treesitter:
```bash
sudo apt install gcc
```

## Clone

Clone it into the `$HOME/.config/home-manager`.

```bash
git clone https://github.com/MohsenNz/hm-sysadmin.git $HOME/.config/home-manager
```

## Install Nix

See [here](https://zero-to-nix.com/start/install)

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

## Initialize home-manager (with flake)

Set `home.username` and `home.homeDirectory` in `home.nix` according to your username & home-directory in the current system and replace `mohsen` in `homeConfigurations."mohsen"` in `flake.nix` with your username. 

Then run (For nixpkgs-25.05 otherwize replace it with the version you are using in flake):

```bash
nix run home-manager/release-25.05 -- switch
```

It's for latest (unstable) version:

```bash
nix run home-manager/master -- switch
```

After that each time you change home.nix use (It will install apps and put dotfiles):

```bash
home-manager switch
```

Or if you want to just apply dotfiles without package updates, run:

```bash
home-manager switch --option substitute false
```

More info is [here](https://nix-community.github.io/home-manager/index.xhtml#sec-flakes-standalone).

## Update home-manager packages

```bash
nix flake update
```

```bash
home-manager switch
```
