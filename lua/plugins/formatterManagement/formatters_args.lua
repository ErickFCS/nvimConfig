return {
  beautysh = {
    args = { "--indent-size", "2", "-" },
  },
  sleek = {
    prepend_args = { "--indent-spaces", "2" },
  },
  djlint = {
    args = { "--profile", "jinja", "--reformat", "--indent", "2", "-" },
    stdin = true,
  },
}
