{ callPackage, fetchurl }:
let
  version = "1.96.16";
  hash = "1yi2i7ycrrsjmwpd83sjz18q51h7sq4wz6ggvxc5lk286pgfk8f6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
