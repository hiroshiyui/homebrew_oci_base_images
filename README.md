# Homebrew OCI format base images

這個 Git repository 擺了幾個我會用到的 base images 的產生程式。(目前有 Arch Linux 與 Debian GNU/Linux)

透過 podman 或 docker 的 image import/save 功能，其實私人組織自己維護 base images 也不必非得依賴從 registry pull images。

而且自己維護 base images，對於 infrastructure 又能多一些掌握，雖然有人會覺得多了點麻煩，但是我覺得在供應鏈稽核之類的需求上，仍然有很多好處。
