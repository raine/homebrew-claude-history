class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.48/claude-history-darwin-arm64.tar.gz"
      sha256 "8b45d0923ea223a3a1a1b70161111cb465ec2b1757959e1e2fe1a66a4d282d82"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.48/claude-history-darwin-amd64.tar.gz"
      sha256 "e64a60ae5380c192d1af322f64484e405bc72e7b394cae53255f40ae943877f4"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.48/claude-history-linux-amd64.tar.gz"
    sha256 "1a17c13c840a04b2996aed2f8d6929c91f8421fe3745e2c2bea2911ab97eec8c"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
