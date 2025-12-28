library(readxl)
DECATHLON <- read_excel("C:/Users/leand/Downloads/DECATHLON.xlsx")
View(DECATHLON)


y=c(50,1,25,80,20)

y=sort(y)
y
length(y)
y[1]
max(y)
which(y==max(y))


y=y[-which(y==max(y))]
y


Liste_des_scores=c(DECATHLON$`Score`)
Liste_des_scores


Liste_des_grands_scores=DECATHLON$`Score`[DECATHLON$`Score`>8200]
Liste_des_grands_scores


Liste_valeursup8200=c(which(Liste_des_scores>8200))
Liste_valeursup8200


Ligne_grand_score=c(which(Liste_des_grands_scores==max(Liste_des_grands_scores)))
Ligne_grand_score


mean(DECATHLON$`Score`[DECATHLON$`Club`=='decaRennes'])
sd(DECATHLON$`Score`[DECATHLON$`Club`=='decaRennes'])

mean(DECATHLON$`Score`[DECATHLON$`Club`=='ParisII'])
sd(DECATHLON$`Score`[DECATHLON$`Club`=='ParisII'])


liste_ParisII_8000pts=c(DECATHLON$`Score`[DECATHLON$`Club`=='ParisII'& DECATHLON$`Score`>8000])
liste_ParisII_8000pts
length(liste_ParisII_8000pts)


plot(DECATHLON$`Ljave`,DECATHLON$`Lpoids`)


liste_score_sautperche=c(DECATHLON$`Sperch`)
liste_score_sautperche
liste_sauteur_nul=c(which(liste_score_sautperche==min(liste_score_sautperche)))
liste_sauteur_nul


DECATHLON$`Club`[DECATHLON$`Sperch`==min(liste_score_sautperche)]

DECATHLON=DECATHLON[-which(liste_score_sautperche==min(liste_score_sautperche)),]

DECATHLON_ordrecroiss_score <- DECATHLON[order(DECATHLON$`Score`),]
DECATHLON_ordrecroiss_score

boxplot(DECATHLON$`Score`[DECATHLON$`Club`=='decaRennes'])

table(DECATHLON$`Club`)

table(DECATHLON$`Club`,DECATHLON$`Age`)
