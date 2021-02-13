#' Scraping Pokemon Species Data Script

# Contain all pokemon data in a Pokedex object
# There will be a unique Pokedex for each generation of the game
# Pokemon have the same stats across all generations (except gens I and II where special was one stat)

extractPokemon <- function(speciesName, dex = "swsh"){
  dex = paste0(c("pokedex-", dex), collapse = "")

  #dexNo <- find

  html <- paste0(c("https://www.serebii.net/", dex, "/", speciesName, "/"),
                 collapse = "")

  htmlRead <- xml2::read_html(html)
  htmlData <- tail(rvest::html_nodes(htmlRead, "table.dextable"), n = 1)

  statsTable <- rvest::html_table(htmlData, fill = T)[[1]][-1, -(1:2)]

  stats <- vector("list", 6)

  names(stats) <- statsTable[1, ]


  stats$HP <- statsTable[2,1]
  stats$Attack <- statsTable[2,2]
  stats$Defense <- statsTable[2,3]
  stats$`Sp. Attack` <- statsTable[2,4]
  stats$`Sp. Defense` <- statsTable[2,5]
  stats$Speed <- statsTable[2,6]

  #genderRatio <- findGenderRatioOnSerebii

  #type <- find

  #levelUpMoves <- find

  return(stats)
}
