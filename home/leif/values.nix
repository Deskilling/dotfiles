{ lib, ... }:
{
  options = {
    isEnabled.Matugen = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };

    brew.Zed = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };
}
