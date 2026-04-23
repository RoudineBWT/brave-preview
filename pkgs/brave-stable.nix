{ callPackage, fetchurl }:
let
  version = "1.89.143";
  hash = "1ddvrf02bz8b7asbsz0p6n5kkw7an0njjnwhgy3541lr0fjrq21z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
