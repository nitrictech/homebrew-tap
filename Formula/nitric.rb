# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.37.0"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.37.0/nitric_1.37.0_macOS_arm64.tar.gz"
      sha256 "2d5d812546e700d6ec50b9431bcb802bfc3f34b1d1224eb6bf1e54c1efc7ed6e"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.37.0/nitric_1.37.0_macOS_x86_64.tar.gz"
      sha256 "9ff1dd98d485877c7ea7d5e20b16dcf3bad8dc4a10baab20f55bb7a731ce839e"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.37.0/nitric_1.37.0_Linux_arm64.tar.gz"
      sha256 "ee2a92d97bad5bdf095e129afcf2a6cc8a216e7cd5817409a66c374fb0d0f1a4"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.37.0/nitric_1.37.0_Linux_x86_64.tar.gz"
      sha256 "27a767a437d13e27b592a6da2051c9ca2454e622440413842cf3e8f6678fa8f2"

      def install
        bin.install "nitric"
      end
    end
  end
end
