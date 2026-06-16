{ callPackage, fetchurl }:
let
  version = "1.93.71";
  hash = "1h94sb5al2slnj6qg3rixdc6x8ni8mwbw5mpkr3zqcvz4lxxk58r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
