class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.0/recall_darwin_arm64.tar.gz"
      sha256 "4dbed3c8cc85e2b05ea3c556bf8b4b230b6fb5f34d2827369bd36017adbaac6c"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.0/recall_darwin_amd64.tar.gz"
      sha256 "28f7b0b077895f6f2c7ca85ea49ace4177ba7066f68106eec9c97dcf935d99a0"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end