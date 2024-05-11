{ lib, stdenvNoCC, writeShellScript, ... }:

stdenvNoCC.mkDerivation {
  pname = "samtex";
  version = "1.0.0";

  outputs = [ "tex" ];

  src = ./.;

  nativeBuildInputs = [
    (writeShellScript "force-tex-output.sh" ''
     out="''${tex-}"
     '')
  ];

  installPhase = ''
    runHook preInstall

    path="$tex/tex/latex/samtex"

    mkdir -p "$path/cheatsheet"

    cp cheatsheet-class/samtex-cheatsheet.cls "$path/cheatsheet/"

    runHook postInstall
  '';
  
  meta = with lib; {
    platforms = platforms.all;
  };
}
