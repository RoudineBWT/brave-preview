{ callPackage, fetchurl }:
let
  version = "1.94.91";
  hash = "1yh4qjvl4wcjanw20rg4jg9f2vbnx9na81mkw6n4yw7l92y7kxj1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
