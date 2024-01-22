# Saik's Nix Profiles

## Desires

1. Different User-Type Profiles.
    - Example; Desktop, Media Server, K8s slave, etc.
2. Plug-n-play package configurations.
    - Example; Preconfigured Neovim, Packages w/ Extra Dependencies Included, Packages Modified to Work the Nix Way.
3. Package Configuration Duplicity.
    - Example; Neovim for Industry Development, and Neovim for Hobbyist Development.
4. Speedy updates.
    - Rebuild command works fast. Multithreaded when possible.
5. Declarative.
    - Entire configuration remains declarative, avoiding mutative dependencies.
6. Fast and Simple Installation.
    - A single `git pull` and rebuild should install the configuration.

## File Structure

### Example structure
#### User Profiles
`/user-profiles/user-name` Contains the configuration for the user 'user-name' (ex, Saik)
- Cloned to local like: `github@/user-profiles/user-name -> local@/etc/nixos/user-profiles/user-name`
#### Device Profiles
`/device-profiles/profile-name` Contains the configuration for 'profile-name' (ex, desktop)
- Cloned to local like: `github@/device-profiles/profile-name/* -> local@/etc/nixos/`
#### Preconfigured Packages
`/packages/package-name` Contains the preconfigured package for 'package-name' (ex, neovim-dark-ai)
- Cloned to local like `github@/packages/package-name -> local@/etc/nixos/packages/package-name`
#### Preconfigured Modules
`/modules/module-name` Contains the preconfigured module for 'module-name' (ex, VPNs)
- Cloned to local like  `github@/modules/module-name -> local@/etc/nixos/modules/module-name`


### Available configs
#### Device Profiles
- *WIP* Desktop
- *WIP* Server
- *WIP* Media Server
- *WIP* K8s Slave

#### Packages


