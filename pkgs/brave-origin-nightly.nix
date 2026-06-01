{ callPackage, fetchurl }:
let
  version = "1.93.13";
  hash = "11wj81qak55c0ny7cp8svj7by9yc4288jbz90nxvqlgdi3l3kg6b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
