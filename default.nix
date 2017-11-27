{ pkgs ? import <nixpkgs> {} }:

let
  inherit (pkgs) wine wineUnstable wineStaging;
  wined3d = wine: import ./wined3d.nix { inherit wine; };
in

{
  stable = wined3d wine;
  development = wined3d wineUnstable;
  staging = wined3d wineStaging;
}
