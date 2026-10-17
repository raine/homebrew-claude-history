class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.78"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.78/claude-history-darwin-arm64.tar.gz"
      sha256 "8dd149509d419ee900a630100e5487213942d0c692dad4cd73e83a643be8a8c6"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.78/claude-history-darwin-amd64.tar.gz"
      sha256 "76af5e84aef7ea39361931aeb50c02e3c0c3a183cc2616d7f94c678f2400333c"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.78/claude-history-linux-amd64.tar.gz"
    sha256 "c7b310e3c163e6567e35991d46b6fd925a8a4ce27a19cb1bcbc1f6c69731ad08"
  end

  def install
    bin.install "claude-history"
    lib.install Dir["lib/*"]
    bin.install_symlink lib/"libonnxruntime.dylib" if OS.mac?
    bin.install_symlink lib/"libonnxruntime.so" if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
