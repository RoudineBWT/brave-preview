{ callPackage, fetchurl }:
let
  version = "1.99.41";
  hash = "06ygw9b1m44xfnhqb32sm3bcjpn1klmhc140mi45s3vb5ail64rh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
