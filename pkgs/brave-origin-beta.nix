{ callPackage, fetchurl }:
let
  version = "1.93.125";
  hash = "18j8pzbyxa4gm4i1fapfl1nhskqgdcir21ll3q1jnc6mirmhnnxr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
