# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.34.4"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.4/nitric_1.34.4_macOS_x86_64.tar.gz"
      sha256 "d230dfb85aafab3f461886a8bbee126a5b32b0f9d80a40bf3dfcb1e937f26840"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.4/nitric_1.34.4_macOS_arm64.tar.gz"
      sha256 "902d7b1918f0086a7ea4ec902dd9b42e24a8c71aa1b4717c2938be4629298166"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.4/nitric_1.34.4_Linux_x86_64.tar.gz"
      sha256 "5add3feaef73a4c1ede328993d4abc03f31ac1f90b626759599c1730b995566b"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.34.4/nitric_1.34.4_Linux_arm64.tar.gz"
      sha256 "f20798eb94f9889400b047be44b268b37b5abe14bcb874a86b5cf6de55a845dc"

      def install
        bin.install "nitric"
      end
    end
  end
end
