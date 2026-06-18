{ callPackage, fetchurl }:
let
  version = "1.93.80";
  hash = "055cnjp5ng3bayrl36hfr1mh4r8zihp21cpzgvwyz02mfqi21qnr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
