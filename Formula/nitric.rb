# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.40.8"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.40.8/nitric_1.40.8_macOS_arm64.tar.gz"
      sha256 "f070e22ca3bcdc546a258efbddcaea767d3cb2f4b5c13ee30708b576e14bda6b"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.40.8/nitric_1.40.8_macOS_x86_64.tar.gz"
      sha256 "b822b0847c700562a2622cb374e33ba1230ffd916bbe306a02cec712f54626a2"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.40.8/nitric_1.40.8_Linux_arm64.tar.gz"
      sha256 "dd1e3cc2473d9cc472f4628495232574821f7630dca2f1e7a26692bb6959752f"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.40.8/nitric_1.40.8_Linux_x86_64.tar.gz"
      sha256 "0e363a7f23484c237ca7c25b5d873f5186dbf44afe8b685464c7f223ef9c4750"

      def install
        bin.install "nitric"
      end
    end
  end
end
