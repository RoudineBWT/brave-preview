{ callPackage, fetchurl }:
let
  version = "1.98.55";
  hash = "1wqf1i7yhrbxy7hfz30jvbqxqm60kwwf1xnbf0iyi0xq02yj8fc8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
