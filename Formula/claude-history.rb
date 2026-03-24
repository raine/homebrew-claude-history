class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.49/claude-history-darwin-arm64.tar.gz"
      sha256 "9da038ab94dd758c89046e051a247f5ee118d8110ccb034c67fbc6ee2c3b2a08"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.49/claude-history-darwin-amd64.tar.gz"
      sha256 "67e15a435fb3d6f7468f667bf8ea4bd721144aacc0a87e4a06b520a8ab75682d"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.49/claude-history-linux-amd64.tar.gz"
    sha256 "986866ac0b4c3fd5d7264064f0884f70e8890e59d4aa3c85be87ac1326c58da5"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
