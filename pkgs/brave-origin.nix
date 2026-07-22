{ callPackage, fetchurl }:
let
  version = "1.92.143";
  hash = "03iaaz7qf8rb3111vgpc4h9ynh782yfdafr3gs6w1zhfvzg3k7pb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
