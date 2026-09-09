{ callPackage, fetchurl }:
let
  version = "1.97.20";
  hash = "0wqpjgsl4kzd9ix0y488ilmb8zvv6x2xsfilva4jfb0vjd3k71m5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
