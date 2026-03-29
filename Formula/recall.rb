class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.0/recall_darwin_arm64.tar.gz"
      sha256 "fb0812ea1d1d205c71b78dbb461c6dd82163cdecc09eb76ee79dbbf57b25916b"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.0/recall_darwin_amd64.tar.gz"
      sha256 "8948eb52c4522d775b0bd054a7533b8f54051b494472ff1ecf7f53ea04c2b7c1"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end