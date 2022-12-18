#Latihan Pertama

df_affitra=read.delim("clipboard")
head(df_affitra)
model_reg=lm(df_affitra$Y~df_affitra$X)
summary(model_reg)

#Latihan Kedua

df_affitra=read.delim("clipboard")
df_affitra$brick_dummy <- ifelse(df_affitra$Brick =="Yes", 1,0)
df_affitra$N_dummy1 <- ifelse(df_affitra$Neighborhood =="West", 1,0)
df_affitra$N_dummy2 <- ifelse(df_affitra$Neighborhood =="North", 1,0)
model=lm(df_affitra$Price~df_affitra$SqFt+df_affitra$Bedrooms+df_affitra$Bathrooms+df_affitra$brick_dummy+df_affitra$N_dummy1+df_affitra$N_dummy2)
summary(model)

by(df_affitra$Price, df_affitra$Neighborhood, mean)
by(df_affitra$Price, df_affitra$Brick, mean)
