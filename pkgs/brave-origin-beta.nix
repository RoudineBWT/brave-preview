{ callPackage, fetchurl }:
let
  version = "1.94.106";
  hash = "1gdz28ydzwazbsxx2ydk7bpa5l8sipq4a6jbl43baagf09rxj8ik";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
