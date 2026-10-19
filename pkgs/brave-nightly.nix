{ callPackage, fetchurl }:
let
  version = "1.100.15";
  hash = "07kv6lzqc1mql43p5w75wfnhrdfmby296qv7f2xww1msalzkzxxz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
