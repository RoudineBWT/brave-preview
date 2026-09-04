{ callPackage, fetchurl }:
let
  version = "1.96.46";
  hash = "10r1vyq15amncynj7j4jp4dm7g7hrqqz8nmb89yy8k50qh6s1jm4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
