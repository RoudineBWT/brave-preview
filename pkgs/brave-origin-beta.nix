{ callPackage, fetchurl }:
let
  version = "1.95.89";
  hash = "1pshna7z5kh02031kdcl38j32hwwbwsb71qqrns8aj0aacqk51zi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
