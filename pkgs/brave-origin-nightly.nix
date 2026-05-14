{ callPackage, fetchurl }:
let
  version = "1.92.63";
  hash = "0vd3ql953c7s9zza237jckzwzwkrlyzx3aaw75i4mb78yh0nk4kd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
