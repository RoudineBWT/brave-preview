{ callPackage, fetchurl }:
let
  version = "1.91.132";
  hash = "0a7xwya6qm1wa93s8p1rq9n3yf66p1mgf3ffi69f45qmxz489qmc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
