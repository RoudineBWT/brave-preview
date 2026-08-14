{ callPackage, fetchurl }:
let
  version = "1.95.73";
  hash = "11pshsq8qqyz9q1b0qannc53y14k9xn9fbfzpfpf5rl2hzq1sp9k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
