library(readxl)
DECATHLON2 <- read_excel("C:/Users/leand/Downloads/DECATHLON2.xlsx")
View(DECATHLON2)

library(ggplot2)





ggplot(
  DECATHLON2, aes(x=C100, y=C400, color=Club, group=Club)) +
  geom_point() +
  labs(title="Temps au 100m en fonction des temps au 400m",
       x="Temps 100m",
       y="Temps 400m") +
  theme_dark() +
  scale_color_manual(values=c("red","blue")) +
  geom_smooth(method="lm")
#On remaque qu'une des deux droite est fausée par une valeur extrème (tout à droite)
#En course (100m et 400m), les Rennais sont globalement meilleur que les Parisiens
#La qualité des entrainements sur ces disciplines doit etre meilleur à Rennes



ggplot(DECATHLON2, aes(x=C1500, fill=Club)) +
  geom_histogram(binwidth = 10) +
  facet_wrap(~Club)

#Au 1500m, Les scores les scores des 10 meilleurs Rennais et des 10 meilleurs Parisiens sont homogènes (ils sont tous en dessous des 275sec) 



ggplot(DECATHLON2) +
  
  aes(x = "", y = Score, fill = Club, colour = Age) +
  
  geom_violin(adjust = 1L, scale = "area") +
  
  scale_fill_hue(direction = 1) +
  
  scale_color_hue(direction = 1) +
  
  theme_minimal()

#Les scores des U17 Rennais sont plus hétérogène que les scores des U17 Parisiens
#Les scores des U19 Parisiens sont plus hétérogène que les scores des U19 Rennais
#L'ecart de niveau entre les U17 et les U19 Rennais est abyssable
#Les U17 et les U19 Parisiens ont globalement le meme niveau
