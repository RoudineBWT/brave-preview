{ callPackage, fetchurl }:
let
  version = "1.93.122";
  hash = "00069i8l55zij2n01yzq88ylng40xj7rdkwqhlicvgx1mj8ivlsj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
