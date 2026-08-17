{ callPackage, fetchurl }:
let
  version = "1.95.74";
  hash = "0ykirrchgpaykx5h7r5xgy2325izxc8zxqc24jh7p90xj7v0mp9s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
