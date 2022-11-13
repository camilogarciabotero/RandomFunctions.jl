using Documenter
using RandomFunctions

makedocs(
    sitename = "RandomFunctions",
    format = Documenter.HTML(),
    modules = [RandomFunctions]
)

deploydocs(
    repo = "github.com/camilogarciaboter/RandomFunctions.jl.git",
)


# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
