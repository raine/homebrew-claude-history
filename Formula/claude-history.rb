class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.47/claude-history-darwin-arm64.tar.gz"
      sha256 "0d93047c23e7cad15dffdb9c791374a08353ad835b6bf2cc5a59f2b5345075ae"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.47/claude-history-darwin-amd64.tar.gz"
      sha256 "fdc26ea5cead7790ea33dfafb1abef8eddd7e2c7e3fe58ce2ffdc3eb68ec4f88"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.47/claude-history-linux-amd64.tar.gz"
    sha256 "fcaa514ac2829618c07f5245b520f0720b21850eab4ab4172f0522c5fd3a9ceb"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
