# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.54.9"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.9/nitric_1.54.9_macOS_arm64.tar.gz"
      sha256 "3e257379fadb1abfa0a2a154db226486ef1545d550f705d49f13696981a692a7"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.9/nitric_1.54.9_macOS_x86_64.tar.gz"
      sha256 "5a046186b4feea16ef5606f55e923e7c4539f26335961e914a88ca87a7fb65cd"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.9/nitric_1.54.9_Linux_arm64.tar.gz"
      sha256 "981a4615af0ba0b4451b7e16765e04f5b2a3ca151e662ed5b432f54d9975eb31"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.9/nitric_1.54.9_Linux_x86_64.tar.gz"
      sha256 "df7c835177b2f22245e72a0a54f7b0714b739ef27e3fee3f71752944cb3ea1a8"

      def install
        bin.install "nitric"
      end
    end
  end
end
