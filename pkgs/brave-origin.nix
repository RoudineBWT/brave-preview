{ callPackage, fetchurl }:
let
  version = "1.95.99";
  hash = "0azda8ag4nypj3m4hgfhpgfvwiry9qmy4absppn7ys3mqj7al430";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
