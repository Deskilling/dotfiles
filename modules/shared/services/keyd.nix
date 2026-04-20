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
          };

          "hyper:C-M-A" = { };
        };
      };
    };
  };
}
