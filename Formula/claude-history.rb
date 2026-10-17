class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.79"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.79/claude-history-darwin-arm64.tar.gz"
      sha256 "4156ca17d29f7d550eec3aa3ab503702e5c6b6d0c2f832c3f6e6f73a34e47961"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.79/claude-history-darwin-amd64.tar.gz"
      sha256 "ca361eb6aa28ff52431c46cdcc97080b155098aa1fc5c6aebe5d239c61c11127"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.79/claude-history-linux-amd64.tar.gz"
    sha256 "4e78fda09bb5ddb86637b66f17ed75ec49fb4c783666c4abf88a8ee1fb62ee24"
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
