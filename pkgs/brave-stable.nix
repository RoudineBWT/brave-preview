{ callPackage, fetchurl }:
let
  version = "1.90.124";
  hash = "00lv481jvhl71yfscj2gj3c240hfjnrl0sq649ax1aa5gpkrxjlr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
