class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.70"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/raine/claude-history/releases/download/v0.1.70/claude-history-darwin-arm64.tar.gz"
    sha256 "ad06ce544149054df1458bd944f5dbe093cd13e77a3b973251712e0f76a56649"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.70/claude-history-linux-amd64.tar.gz"
    sha256 "7b11eab198d1bcde82282a69a9df901a557f6a183ba8a22fc38a3b7d4999d563"
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
