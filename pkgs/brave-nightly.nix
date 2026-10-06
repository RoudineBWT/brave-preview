{ callPackage, fetchurl }:
let
  version = "1.99.16";
  hash = "1w2l5h0rpx7sxbkk25bslg0qmk4xi8mhncsh2gxi74xwds47fkn3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
