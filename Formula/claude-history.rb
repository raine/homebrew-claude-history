class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.52/claude-history-darwin-arm64.tar.gz"
      sha256 "6518187719ea6b8c6cf14ca7d5fda634f7912f24c61977c2a26ff63a66b160a1"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.52/claude-history-darwin-amd64.tar.gz"
      sha256 "aac3db152a218fd219b9a4b35cb9a84ce867ba1f2ee40d49e781c002a68a5148"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.52/claude-history-linux-amd64.tar.gz"
    sha256 "57d5feeb6b3bb2fc201e70ba664e72357612daacfc530d410589a76496aca053"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
