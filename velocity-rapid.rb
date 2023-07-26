# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.18.0-20230726094037-2e5cdef"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.18.0-20230726094037-2e5cdef/velocity_Darwin_x86_64.tar.gz"
      sha256 "0d518e22e545730996dfdee7412f9ed34d4bf0d5b9cec43a985de56a23e72f09"

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
      url "https://releases.velocity.tech/velocity/v0.18.0-20230726094037-2e5cdef/velocity_Darwin_arm64.tar.gz"
      sha256 "a9dc04445fa586964e26aa80638960cacd8710a9f2b14be028644b128882944c"

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
      url "https://releases.velocity.tech/velocity/v0.18.0-20230726094037-2e5cdef/velocity_Linux_arm64.tar.gz"
      sha256 "625002f23e159a03df0b681b00519f2ae4507d17aeeffdb8210db4ddc8d94564"

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
      url "https://releases.velocity.tech/velocity/v0.18.0-20230726094037-2e5cdef/velocity_Linux_x86_64.tar.gz"
      sha256 "803ff5a94f74ba6923b133b4af3303a13c600179744863109531a953a1dbbabe"

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
