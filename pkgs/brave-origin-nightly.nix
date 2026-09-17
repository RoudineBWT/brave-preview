{ callPackage, fetchurl }:
let
  version = "1.98.5";
  hash = "1b37paizv2isd5f1vq1dsz0qhjn5d9yj3kzsxpc15zc6hw8hm5rf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
