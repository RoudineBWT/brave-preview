{ callPackage, fetchurl }:
let
  version = "1.98.12";
  hash = "0lzcrgv06aqlls6sjz6l7nnnbd2bbzln146laal4wkvxz5nca9r3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
