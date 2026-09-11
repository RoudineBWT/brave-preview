{ callPackage, fetchurl }:
let
  version = "1.95.101";
  hash = "1cwr7nqf8rkrlsb61hrnzq8b0i6fpxfd4nc27kywkbk4y4zmmkyh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
