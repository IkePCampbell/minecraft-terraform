locals {
  root_path_tmp = "/${replace(abspath(path.root), ":", "")}"
  root_path     = "${replace(local.root_path_tmp, "////", "/")}"
}