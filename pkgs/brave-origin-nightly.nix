{ callPackage, fetchurl }:
let
  version = "1.98.20";
  hash = "1cvr4n3d9y6n06knmgdldpf0jgrfnx1pmzd68dny56janfzr7cpj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
