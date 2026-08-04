{ callPackage, fetchurl }:
let
  version = "1.94.102";
  hash = "1c8cq4gzr457z4wjqk37yrv16ajacgjxn28mqvz92a00w9rq3qp7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
