{ callPackage, fetchurl }:
let
  version = "1.99.37";
  hash = "16q075ih7812ybbnv8nkbnpl60p4gk4qnmjwhq5jrr3hr13lx1ds";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
