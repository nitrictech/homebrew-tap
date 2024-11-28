# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.55.8"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.8/nitric_1.55.8_macOS_arm64.tar.gz"
      sha256 "acd74c73cf715522a49b20011cb07cbb5ecb297647e561ce1dc6388f4c659499"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.8/nitric_1.55.8_macOS_x86_64.tar.gz"
      sha256 "71b93ea0feb2bea75cc1bd4b3e019ea42ef4a7ecdf9e2a97a080294cf4793094"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.8/nitric_1.55.8_Linux_x86_64.tar.gz"
      sha256 "4727fdc0db69f43d15f198a88b390313f6fac2f3b1f26a48cfb82e167ab62694"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.8/nitric_1.55.8_Linux_arm64.tar.gz"
      sha256 "c99113c7c8dd3c09182713f2448b9bde69c45e72b188a0eed0c259664b5d98a9"

      def install
        bin.install "nitric"
      end
    end
  end
end
