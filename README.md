## Clone

Clone it into the `$HOME/.config/home-manager`.

## Install Nix

See [here](https://zero-to-nix.com/start/install)

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

## Initialize Home-manager (with flake)

Set `home.username` and `home.homeDirectory` in `home.nix` according to your username & home-directory
in the current system.

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

## Update Home-Manager packages

```bash
nix flake update
```

```bash
home-manager switch
```
