# shell.nix
let
	pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/24.05.tar.gz") {};
in pkgs.mkShell {
	packages = [
		(pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
			numpy
			scipy
			matplotlib
			seaborn
			pandas
			pytorch
			pillow
			twisted
			requests
			flask 
			black    
			psycopg2 
			sphinx   
	]))
	pkgs.scons # TODO Consolidate this, use KNOWLEDGE
  ];
}
