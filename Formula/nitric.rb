# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.34.0"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.0/nitric_1.34.0_macOS_arm64.tar.gz"
      sha256 "9166d3176af2c525b7c7e40e8a3cfa3e4e630614b2791ead697a7605d981041d"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.0/nitric_1.34.0_macOS_x86_64.tar.gz"
      sha256 "f2732eae81a0b91a101a290a406b3cfaf3bc9f28444d9e80b59479beadc718ab"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.0/nitric_1.34.0_Linux_x86_64.tar.gz"
      sha256 "87968914056d60d127ffd3fa1c950c9c3d2afd0956b452838055affd1b4804a9"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.0/nitric_1.34.0_Linux_arm64.tar.gz"
      sha256 "f0a03d8c8180e2476cd86735ae15bd76b1ddb2a66ec3cdf1276577f631f84dbc"

      def install
        bin.install "nitric"
      end
    end
  end
end
