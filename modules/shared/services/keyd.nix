{ ... }:
{
  services.keyd = {
    enable = true;

    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            capslock = "overload(hyper, esc)";
            rightshift = "rightshift";
          };

          "hyper:C-M-A" = { };
        };
      };
    };
  };
}
