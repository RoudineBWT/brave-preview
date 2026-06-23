{ callPackage, fetchurl }:
let
  version = "1.93.96";
  hash = "1nycvz9vgg6ix61213k39860jv7l34v5y90c0376pbm4hb303174";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
