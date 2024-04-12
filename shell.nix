with (import <nixpkgs> {});

let

    rakuShellHooks = ''
        export ZEF_FETCH_DEGREE=4
        export ZEF_TEST_DEGREE=4
        export PATH=$HOME/.raku/bin:$PATH
        zef install Jupyter::Chatbook Benchmark Terminal::ANSIColor
        jupyter-chatbook.raku --generate-config --force
    '';

    basePackages = [
        stdenv
        gcc
        git
        curl
        wget
        cacert
        openssl
        zlib
    ];

    chatbookPackages = [
        jupyter-all
        nodejs

        rakudo
        zef        
        zeromq
    ];

    pythonPackages = [
        jupyterlab-lsp
        jedi-language-server
    ];

    applicationPackages = [
        firefox
        thonny
        imagemagick
        pandoc
    ];

    devPackages = [
        jdk
        gcc
        rustup
        rustc
        cargo
    ];

in mkShell {
  buildInputs = [basePackages chatbookPackages applicationPackages];
  shellHook = rakuShellHooks;
  LD_LIBRARY_PATH = lib.makeLibraryPath [
    stdenv.cc.cc
    openssl
    zlib
    zeromq
  ];
}
