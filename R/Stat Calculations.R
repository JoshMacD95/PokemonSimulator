#' Stat Calculations



# ==== Stat Calculations (Gen III onwards) ====
HPcalc <- function(baseHP, HP_IV, HP_EV = 0, level){
  floor((2*baseHP + HP_IV + HP_EV/4)*level/100) + level + 10
}

statCalc <- function(base, statIV, statEV = 0, level, natureMult){
  floor(((floor((2*base + statIV + statEV/4)*level/100)) + 5)*natureMult)
}
