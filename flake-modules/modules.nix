{ inputs, ... }:

{
  imports =
    let
      root = ../modules;

      moduleFiles = inputs.nixpkgs.lib.fileset.toList (
        inputs.nixpkgs.lib.fileset.intersection (inputs.nixpkgs.lib.fileset.gitTracked root) (
          inputs.nixpkgs.lib.fileset.fileFilter (file: file.name == "dmodule.nix") root
        )
      );
    in
    moduleFiles;
}
