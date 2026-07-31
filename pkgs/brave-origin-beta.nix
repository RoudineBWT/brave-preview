{ callPackage, fetchurl }:
let
  version = "1.94.100";
  hash = "0rvir1g46w4s1w6hxrrha9qhgkf16f8k64770dvizxxzj7h7d274";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
