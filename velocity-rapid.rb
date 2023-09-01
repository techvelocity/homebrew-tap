# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.26.0-20230901100240-530cadb"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.26.0-20230901100240-530cadb/velocity_Darwin_x86_64.tar.gz"
      sha256 "eb1a318e7db4ed1cf1039fc3be74be79d14356054809cfa51c1db4598787ace4"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.26.0-20230901100240-530cadb/velocity_Darwin_arm64.tar.gz"
      sha256 "e15c078403697b6d220cdce41e2c9f993984a90d122f33f67b870c07d1f4af0d"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/velocity/v0.26.0-20230901100240-530cadb/velocity_Linux_arm64.tar.gz"
      sha256 "15aa679510055622388390b89c9c8fe35e94154a50515f13e3ccc4658d134387"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.26.0-20230901100240-530cadb/velocity_Linux_x86_64.tar.gz"
      sha256 "c240cf0d788cf49356501edc218abb262638c2cc9924a1d869a92bfa7f1359ed"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
  end

  test do
    system "#{bin}/velocity version"
  end
end
