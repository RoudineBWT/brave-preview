{ callPackage, fetchurl }:
let
  version = "1.92.114";
  hash = "1axvy1fqg9w9xfizylymc7jswms00y91vs802ky7lax95mqq5scr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
