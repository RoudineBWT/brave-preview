{ callPackage, fetchurl }:
let
  version = "1.93.78";
  hash = "0lgxq7lsvhgxzm399lvds15s2mzbc7zm4022kv2ah2pjn6vqsnc9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
