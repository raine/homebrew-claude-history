class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.25/claude-history-darwin-arm64.tar.gz"
      sha256 "97a27157cb05180b9ee385f75b3e32e40535781a1d9ef41cfeed11d1b81f1829"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.25/claude-history-darwin-amd64.tar.gz"
      sha256 "0c579ac31e0212748fdc7534c6aa5d4d4569adce8f4c285bcd911cdf944e79ed"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.25/claude-history-linux-amd64.tar.gz"
    sha256 "eb3b6cbddae0d40bda9e247ec5d5ebd269031714e3063957b1a1756f2e42a166"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
