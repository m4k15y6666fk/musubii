const withSass = require("@zeit/next-sass")
const withMDX = require("@next/mdx")({
  extension: /\.mdx?$/,
  options: {
    rehypePlugins: [require("rehype-highlight")]
  }
})

module.exports = withSass(
  withMDX({
    pageExtensions: ["js", "jsx", "mdx", "md"]
  })
)
