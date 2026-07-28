{ callPackage, fetchurl }:
let
  version = "1.95.16";
  hash = "1dbgsj42843my5pirc01zf4kx1dp7knfyccfgjl35zq6km8dw7kr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
