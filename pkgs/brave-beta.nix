{ callPackage, fetchurl }:
let
  version = "1.92.119";
  hash = "0x23lsh01hv97sm7fzv1hkdycsn28cpw797kcgakcll2fsnb7qcf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
