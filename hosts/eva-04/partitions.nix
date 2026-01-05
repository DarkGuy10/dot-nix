{ ... }:
{
  # Enable ntfs support
  boot.supportedFilesystems = [ "ntfs" ];
  fileSystems."/mnt/spare" = {
    device = "/dev/nvme0n1p4";
    fsType = "ntfs-3g";
    options = [
      "rw"
      "uid=1000"
    ];
  };

}
