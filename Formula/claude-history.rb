class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.7/aarch64-apple-darwin.tar.gz"
      sha256 "af73d44427c72752b30b8debb746d51db2e2aae74ea612f785941959a8e6878a"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.7/x86_64-apple-darwin.tar.gz"
      sha256 "442221ddfe19c85221de243d3926528c710bfa52a1e8079e9861aa80431ca89e"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.7/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "edb1d79c81bec3cf4a89c76de59b8663651ddcdcd1ef728f947d3d7afbb4a4d4"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
