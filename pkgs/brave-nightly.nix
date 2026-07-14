{ callPackage, fetchurl }:
let
  version = "1.94.68";
  hash = "1k1l5wiw6czi2qp2fzvkyd3vlkvgx3yg5ngps0g341xfc50i6wf9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
