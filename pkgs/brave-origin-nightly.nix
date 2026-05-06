{ callPackage, fetchurl }:
let
  version = "1.92.29";
  hash = "0cmbngzj9cxwz20b3lmfz5jd45k7fmjkf2cb59a8w910qv6yfqpq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
