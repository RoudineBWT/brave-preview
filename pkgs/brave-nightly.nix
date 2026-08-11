{ callPackage, fetchurl }:
let
  version = "1.95.58";
  hash = "0jl8ghw54i3z15z8c3wabs5qizdgd4dqhq9ca5jg3iq6rzz2l2wz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
