{ callPackage, fetchurl }:
let
  version = "1.93.123";
  hash = "18hdv7q6rzs3vdy966qrs7rp0wn4wq3rq5cd60j0cibxl5klnajk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
