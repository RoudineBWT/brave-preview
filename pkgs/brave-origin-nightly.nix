{ callPackage, fetchurl }:
let
  version = "1.94.56";
  hash = "0sb1aqmmsq1xkv82b6ipqv33p4dfc4xq5s4qr162apwbdl8kmi21";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
