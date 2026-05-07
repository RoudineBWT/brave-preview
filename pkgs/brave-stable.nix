{ callPackage, fetchurl }:
let
  version = "1.90.121";
  hash = "1kny0klgggps1ffvn5nd6w8dwzsma9f54gficv1sdscgmz5z3r2w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
