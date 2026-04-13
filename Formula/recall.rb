class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.2/recall_darwin_arm64.tar.gz"
      sha256 "65acb4a9d47c65c5693f84c6bb59fe451e93f240fa83ea456ccd48dfa7db427b"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.2/recall_darwin_amd64.tar.gz"
      sha256 "29e76224b15cccedc5d7775d9aa4603b80495db06bab6d896174477ad602db1a"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end