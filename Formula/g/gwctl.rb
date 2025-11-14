class Gwctl < Formula
  desc "CLI tool for managing and understanding Gateway API resources in your Kubernetes cluster"
  homepage "https://github.com/kubernetes-sigs/gwctl"
  url "https://github.com/kubernetes-sigs/gwctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "07e300a95a9c2e8e88f96c8507e5acdc1e051f8b79125ee9c8174a06676ef655"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/gwctl"
  end

  test do
    system bin/"gwctl", "version"
  end
end
