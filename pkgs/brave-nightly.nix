{ callPackage, fetchurl }:
let
  version = "1.94.70";
  hash = "0nngbkxh0061i7n4zgy86b4r7jy4m9r9v00q6mddbxd1zgr3xfzl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
