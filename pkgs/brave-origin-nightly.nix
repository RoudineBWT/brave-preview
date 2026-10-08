{ callPackage, fetchurl }:
let
  version = "1.99.24";
  hash = "12bll0934kdbdl920xv3pnv8m0yji16b98nfxppk9h0qk44l4af5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
