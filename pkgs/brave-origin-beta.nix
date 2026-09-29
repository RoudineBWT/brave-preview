{ callPackage, fetchurl }:
let
  version = "1.97.51";
  hash = "1cjjz1dkfx7s9zf42qs4b2xfh1zfznlkxdh4wjqa6vd55m2vf47m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
