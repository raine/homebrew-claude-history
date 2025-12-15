class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.10/aarch64-apple-darwin.tar.gz"
      sha256 "e042ee430c6a7e61e535eb8149f7dcf442b16d83f404378f42a6330263846782"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.10/x86_64-apple-darwin.tar.gz"
      sha256 "81a41f4bdcc75e75c6402af98890d90f5b58bb95164e6553a2b846197f349672"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.10/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9dac6b56618b5b1998950ad82411da2bca4123483c6653012bef81bc8c909385"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
