{ callPackage, fetchurl }:
let
  version = "1.92.16";
  hash = "0mi4f77vya4492s3ank3imh7nqz444y4ijw7rgmci0b42siwaafx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
