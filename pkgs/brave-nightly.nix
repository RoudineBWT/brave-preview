{ callPackage, fetchurl }:
let
  version = "1.93.56";
  hash = "0wb656mqz5ipscc9a8klzlj73fqr5ziwkhh6gd7jzgh7c39jvkj0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
