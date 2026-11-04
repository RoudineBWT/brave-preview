{ callPackage, fetchurl }:
let
  version = "1.101.25";
  hash = "154amnpa3hx0sksnzbpqfkkw7f394m5raph48q27chaiv8rm1d7g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
