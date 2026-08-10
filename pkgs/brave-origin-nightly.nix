{ callPackage, fetchurl }:
let
  version = "1.95.54";
  hash = "1byxdz2p56q1d9dbhklw8kv5j4ga8y1dwm6w2arwl355fhw5iidr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
