class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.55"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.55/claude-history-darwin-arm64.tar.gz"
      sha256 "ab0f398fbc6f18530d419da27c2df301db431dc58222d9367cd0202b1b24c5b1"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.55/claude-history-darwin-amd64.tar.gz"
      sha256 "3e858752be391225489fa9ce56dd430b509da16349e421ef8185a6572eb065d3"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.55/claude-history-linux-amd64.tar.gz"
    sha256 "908c9ec21761756bd49c9b8ab4aa0da37eb5fff44a503841797ed0104b2614f4"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
