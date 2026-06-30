{ callPackage, fetchurl }:
let
  version = "1.94.18";
  hash = "1fizyh1445qky7i7fzxyryw2qnlm5r94xr03n34sis76x08lsd6m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
