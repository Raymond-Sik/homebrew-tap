class InstrumentsExtractor < Formula
  desc "Extract performance metrics from Instruments .trace files"
  homepage "https://github.com/Raymond-Sik/InstrumentsExtractor"
  url "https://github.com/Raymond-Sik/InstrumentsExtractor/releases/download/v1.0.0/instruments-extractor-v1.0.0-macos.tar.gz"
  sha256 "PLACEHOLDER_WILL_BE_UPDATED_AFTER_RELEASE"
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
