{ callPackage, fetchurl }:
let
  version = "1.100.19";
  hash = "0rb3s6qml9vkmicdska0w8s3r67bp5wl3bd24ixvxwypqhp0gd3k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
