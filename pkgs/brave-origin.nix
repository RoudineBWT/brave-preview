{ callPackage, fetchurl }:
let
  version = "1.100.57";
  hash = "1mvjga83j01g9q0k0r1vi1zbx4k3nspivpbgi5mxhjd88yiy6qq6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
