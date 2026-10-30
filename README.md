
# Frontend playbook

Templated from [arch-base-infra](https://github.com/ataylor-us/arch-base-infra).

This box is the hypervisor for my homelab, currently it runs Ubuntu 26 with opentofu/libvirt provisioning the VMs.

```bash
ssh-copy-id `#ip`
ansible-playbook master.yml -e tailscale_authkey=`#key` -e ansible_host=`#ip`
```

Firewall rules (& drift management) are handled externally by [OpenVox](https://voxpupuli.org/openvox/).
