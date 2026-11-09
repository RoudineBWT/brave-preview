{ callPackage, fetchurl }:
let
  version = "1.101.38";
  hash = "1fvl7xdjsnh373qkdxbdw1g03kgnnb7zbccgmpbs659yhwvxsvn5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
