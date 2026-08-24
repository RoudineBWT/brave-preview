{ callPackage, fetchurl }:
let
  version = "1.96.10";
  hash = "1kf2kwh0f3jk0jj5jikrzir34lcb6dqiym4mh6ak28hdki3507g1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
