{ callPackage, fetchurl }:
let
  version = "1.96.35";
  hash = "1i5xs9lvjcdy9i9br2k0rn7249jpgr6zlpdrybj5ik1cb9agir4h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
