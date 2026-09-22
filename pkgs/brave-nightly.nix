{ callPackage, fetchurl }:
let
  version = "1.98.18";
  hash = "1wx517fb8651n61zrfz08xw65dzd74j4w5yc9hsz3zi3n8j2xqzp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
