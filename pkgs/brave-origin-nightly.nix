{ callPackage, fetchurl }:
let
  version = "1.100.15";
  hash = "136ips22zrv7v3yvjf4yw19gsk54mgv270rws2bzhbrmz6zhl6yz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
