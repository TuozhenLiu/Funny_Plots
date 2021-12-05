cars_lm <- lm(Price ~ Passengers + Length + RPM, data = MASS::Cars93)

gg_diagnose(cars_lm, scale.factor = 0.8)
