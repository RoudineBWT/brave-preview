{ callPackage, fetchurl }:
let
  version = "1.93.54";
  hash = "12qsvd3pb4chf0mdyqxm6hass7wvwdcm7zdkriy5p27c3hb4gzcc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
