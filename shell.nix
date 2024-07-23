{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ccls
    pkgs.scons
    pkgs.godot_4
    pkgs.python3
    pkgs.python311Packages.jedi
  ];
 
  shellHook = ''
    cd godot-cpp && git submodule update --init && cd ..
    chmod +x editor.sh
    chmod +x game.sh
    echo "nix-shell initialized! :))"
  '';
}
