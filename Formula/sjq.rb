class Sjq < Formula
  desc "JSON processor compatible with jq, built on simdjson"
  homepage "https://simdjson.github.io/sjq/"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    # One universal binary for Apple silicon and Intel.
    on_arm do
      url "https://github.com/simdjson/sjq/releases/download/v0.4.0/sjq-macos-universal.tar.gz"
      sha256 "c49ead829de672688dfc1645ac66195f06c3e630d42676fb369372371ebf5ff2"
    end
    on_intel do
      url "https://github.com/simdjson/sjq/releases/download/v0.4.0/sjq-macos-universal.tar.gz"
      sha256 "c49ead829de672688dfc1645ac66195f06c3e630d42676fb369372371ebf5ff2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simdjson/sjq/releases/download/v0.4.0/sjq-linux-aarch64.tar.gz"
      sha256 "5f79eef76ec94c3ec90b6ec9338640c6000590cc4530c48f477702d5726acbc9"
    end
    on_intel do
      url "https://github.com/simdjson/sjq/releases/download/v0.4.0/sjq-linux-x86_64.tar.gz"
      sha256 "01d3e4eeee6460ba1f7d9e3881defec98c5f98f57dd9d87789cc0ed7fd50fcd7"
    end
  end

  def install
    bin.install "sjq"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/sjq .a", '{"a": 2}')
  end
end
