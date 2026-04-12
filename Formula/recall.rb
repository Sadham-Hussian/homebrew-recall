class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.1/recall_darwin_arm64.tar.gz"
      sha256 "65f6d6aa9e26c958a4837acea52c95168beaf63e49b218f19ac2e8e97aa9ddfa"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.1/recall_darwin_amd64.tar.gz"
      sha256 "9727d3ffe163ad799471818045b3b780f4ca5745ce7eaccaac5def9a6418c8a1"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end