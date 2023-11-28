# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.33.3"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.3/nitric_1.33.3_macOS_arm64.tar.gz"
      sha256 "a3637014aeaf9aab04f1ff1262a9e6944cbc5ff7abdf9f8a1e0bf5e7424ec381"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.3/nitric_1.33.3_macOS_x86_64.tar.gz"
      sha256 "cde2d063055a595ea597ae2cff128811575ede1d3292ad86070ec37d471fde36"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.3/nitric_1.33.3_Linux_arm64.tar.gz"
      sha256 "4d7767821de727366d88d66597eccd7455c099a06a4009a62b7da2487c087c78"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.3/nitric_1.33.3_Linux_x86_64.tar.gz"
      sha256 "d55d5f9002d0e1f4ffa3557e02ad1a085cce4b409e302dc57c813fe95f9e6b2e"

      def install
        bin.install "nitric"
      end
    end
  end
end
