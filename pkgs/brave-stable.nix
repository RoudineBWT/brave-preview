{ callPackage, fetchurl }:
let
  version = "1.90.127";
  hash = "1b9f5a5fl5pfi5pjr7d4hxnaina25n5bnfsp57fmfqxhcpv1j88n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
