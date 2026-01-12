class InstrumentsExtractor < Formula
  desc "Extract performance metrics from Instruments .trace files"
  homepage "https://github.com/Raymond-Sik/InstrumentsExtractor"
  url "https://github.com/Raymond-Sik/InstrumentsExtractor/releases/download/v1.0.0/instruments-extractor-v1.0.0-macos.tar.gz"
  sha256 "82f3ffd3dc57aca08828a9ea2e2f68a1e20213c5d4f55b3b39c9c3ec44e30a0b"
  license "MIT"
  version "1.0.0"

  depends_on :macos
  depends_on macos: :ventura

  def install
    bin.install "instruments-extractor"
  end

  test do
    system "#{bin}/instruments-extractor", "--help"
  end
end
