#' Generate New Pokemon


newPokemon <- function(species, level, EVs = rep(0, 6)){
  # Randomly generate IVs, Nature, Gender and Ability
  IVs <- sample(0:31, replace = T, size = 6)
  gender <- rbinom(1, size = 1, prob = species$genderRatio)
  Nature <- sample(1:25, size = 1)
  natureMult <- as.numeric(natureMatrix2[Nature, ])

  # Stats
  HP <- HPcalc(baseHP = species$base$HP, HP_IV = IVs[1], HP_EV = EVs[1], level = level)
  Attack <- statCalc(base = species$base$Attack, statIV = IVs[2], statEV = EVs[2], level = level, natureMult[1])
  Defense <- statCalc(base = species$base$Defense, statIV = IVs[3], statEV = EVs[3], level = level, natureMult[3])
  SpAttack <- statCalc(base = species$base$SpAttack, statIV = IVs[4], statEV = EVs[4], level = level, natureMult[2])
  SpDefense <- statCalc(base = species$base$SpDefense, statIV = IVs[5], statEV = EVs[5], level = level, natureMult[4])
  Speed <- statCalc(base = species$base$Speed, statIV = IVs[6], statEV = EVs[6], level = level, natureMult[5])

  return(list(species = deparse(substitute(species)), stats = list(HP = HP, Attack = Attack, Defense = Defense, SpAttack = SpAttack, SpDefense = SpDefense,
                                                                   Speed = Speed),
              IVs = IVs, gender = gender, Nature = Nature))
}
