# Triboard ZMK config

This is the ZMK config for the [Triboard](https://github.com/tarneaux/triboard), adapted to my needs and likes.

It is heavily based on GEIGEIGEIST's [TOTEM ZMK config](https://github.com/GEIGEIGEIST/zmk-config-totem).

![Keymap drawing](https://github.com/user-attachments/assets/0a14ae99-9cc9-4066-b515-f84c9055994b)

## Flashing with Nix

```sh
nix run .#flash
```

## Maintenance

Run `nix run .#update` to update West dependencies, including ZMK version, and bump the zephyrDepsHash on the derivation
