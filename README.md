- https://github.com/kubernetes-sigs/image-builder/tree/main
- https://image-builder.sigs.k8s.io/

## When Cloning the Repo

```bash
git submodule sync --recursive
git submodule update --init --recursive
```

## Building Images

```bash
./buildscript.sh
```
## Debugging
- Some of the configuration options apply to the [Proxmox Packer plugin](https://github.com/hashicorp/packer-plugin-proxmox)
