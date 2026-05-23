{ callPackage, fetchurl }:
let
  version = "1.92.92";
  hash = "19fc0b7gsg17b43817ssi4qbyjcs9xfcwjmkbgv9xsl4z2ixgjn4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
