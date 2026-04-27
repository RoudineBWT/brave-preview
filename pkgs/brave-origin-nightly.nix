{ callPackage, fetchurl }:
let
  version = "1.91.116";
  hash = "0qknaq47d4dbxn3l7dwvwbn03qpzrbvmpi964llq2jdqg3aicmd7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
