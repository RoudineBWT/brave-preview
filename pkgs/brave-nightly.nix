{ callPackage, fetchurl }:
let
  version = "1.102.22";
  hash = "04q755645vahls53wwh2aczch0pa5i8vfgdi55f7jy4b57370rzp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
