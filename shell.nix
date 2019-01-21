{ pkgs ? import <nixpkgs> {}, ghc ? pkgs.ghc }:

pkgs.haskell.lib.buildStackProject {
  name = "hayland";
  inherit ghc;
  buildInputs = with pkgs; [ 
                             (callPackage ./nix/wayland.nix { } )
                             (callPackage ./nix/wayland-protocols.nix { } )
                             # (callPackage ./nix/wlroots.nix { } )
                             # libGL
                             # xorg.pixman
                             # libxkbcommon
                             # zlib
                             # git
                             # xorg.libX11
                             # udev
                             # cabal-install
                             # libinput
                          ];

  LANG = "en_US.UTF-8";
  TMPDIR = "/tmp";
}