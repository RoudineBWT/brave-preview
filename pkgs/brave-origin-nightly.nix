{ callPackage, fetchurl }:
let
  version = "1.100.21";
  hash = "0rlvkwhygyzcns551nrwfhadkv9vdpfckyjzc41v8l85fy90ajkx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
