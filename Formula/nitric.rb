# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.54.4"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.4/nitric_1.54.4_macOS_x86_64.tar.gz"
      sha256 "9c499e39315a232e16e87627fc452942991c25621e1cd2ad679baffc8507e68a"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.4/nitric_1.54.4_macOS_arm64.tar.gz"
      sha256 "a870e7a24e723fea32e40606c9b4f02e589ebd1dc58b709b05edf1ab12f09a1c"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.4/nitric_1.54.4_Linux_arm64.tar.gz"
      sha256 "75459319ac01f29e2f4eca4a64baaaaaf16c722902f4fbff58451dc574a8d2d3"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.4/nitric_1.54.4_Linux_x86_64.tar.gz"
      sha256 "1338d7c9cc3c686cd0f979175ba493dfd942d0c6cd90b1ece557bc19c4d63511"

      def install
        bin.install "nitric"
      end
    end
  end
end
