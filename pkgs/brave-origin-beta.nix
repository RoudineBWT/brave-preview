{ callPackage, fetchurl }:
let
  version = "1.91.149";
  hash = "184iicc2jd8g5k6wxa7kv9mr2fnwyc9l2pcl99lbp6zjgi09ysir";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
