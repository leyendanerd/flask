resource "proxmox_lxc" "docker-flask" {
  hostname     = "Docker-flask"
  target_node  = "ns525832"
  start        = true
  cores        = 2
  memory       = 2048
  ostemplate   = "local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
  ostype       = "ubuntu"
  password     = var.pm_pass_dockerapp
  unprivileged = true


  rootfs {
    storage = "local"
    size    = "80G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr1"
    ip     = "10.10.1.26/24"
    gw     = "10.10.1.1"
  }

}