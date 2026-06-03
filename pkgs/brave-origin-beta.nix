{ callPackage, fetchurl }:
let
  version = "1.92.113";
  hash = "1n6sg05qfssdracv35r8lfihkwdb6dwqw577sgcj60c1pqprr72i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
