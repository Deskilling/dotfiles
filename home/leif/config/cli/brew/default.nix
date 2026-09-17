{ config, lib, ... }:
{
  home.file.".Brewfile".text = ''
    ${lib.optionalString config.brew.Zed ''cask "zed"''}
  '';
}
