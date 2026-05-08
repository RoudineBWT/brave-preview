{ callPackage, fetchurl }:
let
  version = "1.91.144";
  hash = "1im3ijg7wsz11fpa3q5wamrgf7c3s40wd29iag6zixmd87253jpl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
