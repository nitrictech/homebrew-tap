# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.54.0"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.0/nitric_1.54.0_macOS_arm64.tar.gz"
      sha256 "0b4a0bf849b1a42ae9ba535e4199fb6e87952b56a81a929cd9be2374de1cb37c"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.0/nitric_1.54.0_macOS_x86_64.tar.gz"
      sha256 "40eccff93c1ea8d6ba598c6fa45c14063c224d078782f63a4cfcfa09204bbd6a"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.0/nitric_1.54.0_Linux_arm64.tar.gz"
      sha256 "ecfc2d454288969c9d94aa3b773d694398a21b215cedcd2871e8f39de361bd0f"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.0/nitric_1.54.0_Linux_x86_64.tar.gz"
      sha256 "1e92f260b51914fe3dd77a0a60a3259eac1ea470a8676642120cb0b54256e3fe"

      def install
        bin.install "nitric"
      end
    end
  end
end
