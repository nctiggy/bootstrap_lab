# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "Password#1"
  vsphere_server = "192.168.0.35"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

# Create a virtual machine within the folder
resource "vsphere_virtual_machine" "web" {
  name    = "terraform-web"
  vcpu    = 2
  memory  = 4096
  cluster = "cluster"

  network_interface {
    label = "VM Network"
  }

  disk {
    template  = "Ubuntu16.04.tmpl"
    datastore = "ScaleIO"
  }
}
