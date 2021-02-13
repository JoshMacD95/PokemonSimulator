# About

# This package will include all things I want to recreate from the Pokemon main series, mainly a battling simulator.
# The first step is to attempt to implement a Generation 8 simulator, but I also want to do previous generations too
# Generation 1 (because it's funny) and Generation 3 (pre Physical/Special Move split)

# January 7th 2021

# Pokemon Generator is done.
# Given a pokemon (i.e its base stats and gender ratio), a level and a set of EVs,
# a random instance of that species can be generated.

# The next step is to scrape all the base stats of the first 151 pokemon from Serebii/Bulbapedia

# Another next step is to complete the damage calc formula




# Battling Simulator

# There are many mechanics to battling will need to be accounted for.

# The main mechanic is damage, which is itself affected by many other mechanics.

# Damage formula

# Move itself implies basePower, Physical/Special and Attack Type

# The Pokemon Species implies the STAB, but Attack and Defense stats are not unique to a pokemon species

# Natures

natures <- c("Hardy", "Lonely", "Brave", "Adamant", "Naughty", "Bold",
             "Docile", "Relaxed", "Impish", "Lax", "Timid", "Hasty",
             "Serious", "Jolly", "Naive", "Modest", "Mild", "Quiet",
             "Bashful", "Rash", "Calm", "Gentle", "Sassy", "Careful",
             "Quirky")

statUp <- c("", rep("Attack", 4), "Defense", "", rep("Defense", 3), rep("Speed", 2),
            "", rep("Speed", 2), rep("Special Attack", 3), "", "Special Attack", rep("Special Defense", 4),
            "")

statDown <- c("", "Defense", "Speed", "Special Attack", "Special Defense", "Attack",
              "", "Speed", "Special Attack", "Special Defense", "Attack", "Defense",
              "", "Special Attack", "Special Defense", "Attack", "Defense", "Speed",
              "", "Special Defense", "Attack", "Defense", "Speed", "Special Attack",
              "")

naturesMatrix1 <- matrix(nrow = 25, ncol = 3)

naturesMatrix1[, 1] <- natures
naturesMatrix1[, 2] <- statUp
naturesMatrix1[, 3] <- statDown

natureMatrix2 <- matrix(1, nrow = 25, ncol = 5)

rownames(natureMatrix2) <- natures
colnames(natureMatrix2) <- c("Attack", "Special Attack", "Defense", "Special Defense", "Speed")


apply(naturesMatrix1, MARGIN = 1, FUN = function(X) if(X[2] != "") natureMatrix2[X[1], c(X[2], X[3])] <<- c(1.1, 0.9))


Bulbasaur <- list(base = list(HP = 45, Attack = 49, SpAttack = 65, Defense = 49, SpDefense = 65, Speed = 45),
                  genderRatio = 0.8816)

statCalc(bulbasaur$base$Attack, statIV = 16, level =)


set.seed(1)
randomBulbasaur <- newPokemon(Bulbasaur, level = 5,
                              EVs = c(0, 204, 0, 40, 196, 8))
#' @param pokemon1 is an object containing information about an instance of a pokemon which will be attacking pokemon2
#' @param pokemon2 is an object containing information about an instance of a pokemon which will be attacking pokemon1
#'
damageKernel <- function(pokemon1, pokemon2){

}

#' @func Simple Damage Calculation
#' @param attackPower The power of the attack that is to be used
#' @param att The attack stat of the pokemon using the move
#' @param def The defense stat of the pokemon being attacked
damageCalc <- function(attackPower, att, def){

}

# Base power is attributed to the move a pokemon uses and is the same for every pokemon. The pokemon which


# ==== Needs

# Move Database
# Pokemon Database
# Type Effectiveness chart



# ==== Next Steps

# Priority
#
# Status Moves
# Status Inflictions





hello <- function() {
  print("Hello, world!")
}
