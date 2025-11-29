class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.6/aarch64-apple-darwin.tar.gz"
      sha256 "9182f37b8518ede1a28a27c4fba9a9e8a21c633bea221582fd085f73dadda180"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.6/x86_64-apple-darwin.tar.gz"
      sha256 "f68d9fe8632203975a193d0917c7d765084f1d000e88341651803d42f06fedb5"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.6/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2a86f66a2a2ef6844163fa27f26e53630804ce38dfaaf6459d0f0b2ffb35e3a9"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
