# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.15.2-20230706103548-48894b3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.15.2-20230706103548-48894b3/velocity_Darwin_arm64.tar.gz"
      sha256 "34d23293ae0344adaab20c49cde30c0f0e374c0d143e66474ea8c1df514f6fca"

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
      url "https://releases.velocity.tech/velocity/v0.15.2-20230706103548-48894b3/velocity_Darwin_x86_64.tar.gz"
      sha256 "70765fc91b29ce174d8958763e21069d02ddee5ef75a9ed6edf7ebe60e2fddc4"

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
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.15.2-20230706103548-48894b3/velocity_Linux_x86_64.tar.gz"
      sha256 "d1d9e264c1af3da4bacc737dcca5ca344d7c8ad48f13dd4eb91d0be167c20d61"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/velocity/v0.15.2-20230706103548-48894b3/velocity_Linux_arm64.tar.gz"
      sha256 "cb586cbb06baeafd194ac25f557815a01d74cf8b426ec3949965b0c24dab2322"

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
