{ callPackage, fetchurl }:
let
  version = "1.97.2";
  hash = "0h3fb06w88xkl9db3davjxbn48xh7ahhhgnrqhaipdxb3hyib2ar";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
