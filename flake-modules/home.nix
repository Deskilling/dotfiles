{ inputs, lib, ... }:

{
  options.flake.homeManagerModules = lib.mkOption {
    type = lib.types.lazyAttrsOf lib.types.raw;
    default = { };
  };

  imports =
    let
      root = ../home;

      moduleFiles = inputs.nixpkgs.lib.fileset.toList (
        inputs.nixpkgs.lib.fileset.intersection (inputs.nixpkgs.lib.fileset.gitTracked root) (
          inputs.nixpkgs.lib.fileset.fileFilter (file: file.name == "dmodule.nix") root
        )
      );
    in
    moduleFiles;
}
