{ callPackage, fetchurl }:
let
  version = "1.94.48";
  hash = "0f66ibi6xig5zh7ia0xpaw7alms6f4z9jid8mkf3irkqv8bz2kd6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
