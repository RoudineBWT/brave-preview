{ callPackage, fetchurl }:
let
  version = "1.92.39";
  hash = "1xymna4wjbrsglyfhqp3wk4iy5sjl2wp2vcjy5ld2d54i4ihgz5h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
