# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.54.6"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.6/nitric_1.54.6_macOS_arm64.tar.gz"
      sha256 "ab2c58e298d443d40c5ac8e31de70f6fe2cf981b91b2a662d489d1b96e1382c9"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.6/nitric_1.54.6_macOS_x86_64.tar.gz"
      sha256 "50fe6c36e3b12181c1789955e003b9b3d26fa90047ef8ed6b9dcd32b2b313c2d"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.6/nitric_1.54.6_Linux_arm64.tar.gz"
      sha256 "9274a82b32da47305aa928b0df06478605484dd4255c770ff26ba0504c0555e0"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.6/nitric_1.54.6_Linux_x86_64.tar.gz"
      sha256 "3cfe3dc90f7991aeaae87a195f935f3cac76f5ec5d3e7aa79e49f72ff7ae77f7"

      def install
        bin.install "nitric"
      end
    end
  end
end
