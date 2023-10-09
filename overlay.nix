# TODO: move these overrides into a nixpkgs config option
final: prev: {
  cudatoolkit = prev.cudatoolkit_11;

  openmpi = prev.openmpi.override { cudaSupport = true; };

  ucx = prev.ucx.override { enableCuda = true; };

  # Add packages here that we want to build and that are not
  # unfree+redistributable.
  # extraChecks = [
  #   "blas"
  #   "cudatoolkit"
  #   "lapack"
  #   "mpich"
  #   "openmpi"
  #   "python3Packages.jaxlibWithCuda"
  #   "python3Packages.tensorflowWithCuda"
  #   "python3Packages.pytorchWithCuda"
  #   "ucx"
  # ];
}
