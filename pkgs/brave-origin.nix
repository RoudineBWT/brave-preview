{ callPackage, fetchurl }:
let
  version = "1.94.115";
  hash = "1lxysc86vv3zjwkhdxvgw5flax1wl9f2apyg318anw6s5ms1rs8f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
