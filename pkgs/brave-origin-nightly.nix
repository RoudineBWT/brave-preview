{ callPackage, fetchurl }:
let
  version = "1.94.5";
  hash = "04m52s5irkmlzsd87n2pklslqjlyf3k56midcgy4krxyyz26kaj1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
