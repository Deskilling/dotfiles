{
  # Caps Lock: tap = Esc, hold = hyper (Ctrl+Alt+Super)
  services.keyd = {
    enable = true;
    keyboards.default = {
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
}
