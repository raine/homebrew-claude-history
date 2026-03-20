class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.45"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.45/claude-history-darwin-arm64.tar.gz"
      sha256 "1ff73c195826fcbd0497ea58c7dcfde72729448cb337a9431d38776dfef7ab13"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.45/claude-history-darwin-amd64.tar.gz"
      sha256 "bb0d5d9bac4f631b91d2bc76d562b273a99f9f6a1e27d5df8ac143f82da553cc"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.45/claude-history-linux-amd64.tar.gz"
    sha256 "f2b31d363d79fb2c839d480e100ae561833bab32af26babb2bac9367186f4efc"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
