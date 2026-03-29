class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.0/recall_darwin_arm64.tar.gz"
      sha256 "96717ac1f1365a5470fd58de1df3490a03d89f1b899b1980b7fcad18bd3b46e4"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.0/recall_darwin_amd64.tar.gz"
      sha256 "a24b293d01e64c2a0fde96c3445e8ccd6c818943f5ae5bca1863c31414bcd797"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end