# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.55.9"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.9/nitric_1.55.9_macOS_arm64.tar.gz"
      sha256 "e4048bd891b784a6c25c3e8dffd878700f994ea051d04cbe932d85c04abbc6bb"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.9/nitric_1.55.9_macOS_x86_64.tar.gz"
      sha256 "56cc60ec5db136b16758675c9d7676b7be879cb62129a0916c2e0ad7d0f6f569"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.9/nitric_1.55.9_Linux_arm64.tar.gz"
      sha256 "1031ca23f79924681e66d26cb7a67788978f016977dd093aff251586d487b63d"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.9/nitric_1.55.9_Linux_x86_64.tar.gz"
      sha256 "76c075880ee429df8bf0a4c342f6077639327ed7bb771489157de45a129d0f37"

      def install
        bin.install "nitric"
      end
    end
  end
end
