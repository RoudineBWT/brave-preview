{ callPackage, fetchurl }:
let
  version = "1.93.45";
  hash = "0jhp3zpfr63r308ghcj8mlcw8602pbl3m4dv1k8n3wyypcwngc0r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
