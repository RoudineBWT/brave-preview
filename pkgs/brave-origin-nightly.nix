{ callPackage, fetchurl }:
let
  version = "1.95.77";
  hash = "0vnhsd79j6gb09w3npfzj733885w1q4kw0kwlyfjz3axjmw4mx5y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
