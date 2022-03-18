# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.2.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.2.1/nitric_1.2.1_macOS_x86_64.tar.gz"
      sha256 "d8f551e70dd95a237e776a62b4a4d78ba59403bfcc549c31e02579d18179d610"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.2.1/nitric_1.2.1_macOS_arm64.tar.gz"
      sha256 "662ab481c64af393760b89027af59f60a387edc0af3351c9e4d2ac8cea2d30b2"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.2.1/nitric_1.2.1_Linux_arm64.tar.gz"
      sha256 "d071cff1d29fd3ac86e1fab0128e3c7b1666410f7b57b5c7639cb576cc6c1200"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.2.1/nitric_1.2.1_Linux_x86_64.tar.gz"
      sha256 "19b3e678b18bec2241d6258d4360fc1a6052925158d1958a723ca4045adc596d"

      def install
        bin.install "nitric"
      end
    end
  end

  depends_on "git"
  depends_on "pulumi" => :optional
end
