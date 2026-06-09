{ callPackage, fetchurl }:
let
  version = "1.91.171";
  hash = "14sm8qs4rfpfgs4kjx1ljy2x21fqi4ahfx6a8x84xsim4mq8qv1l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
