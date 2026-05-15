{ callPackage, fetchurl }:
let
  version = "1.91.154";
  hash = "1s1hpirxs80pfn73r3rsn1rw4c2cngqpcskbvsxyvfr3llv7szq2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
