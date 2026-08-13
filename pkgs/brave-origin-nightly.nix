{ callPackage, fetchurl }:
let
  version = "1.95.66";
  hash = "1v05qjglmnm06h4xjrb3ygzdf55c4hag5r1nsnadhppc2f63js90";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
