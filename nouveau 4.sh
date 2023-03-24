!/bin/bash

#Read CA="Chiffres d'affaires"

# Informations des transactions par établissement
cat ventes.csv | awk -F ',' '{print $1,$2}' | sort | uniq -c > CA_ETS.txt



# Calcul du nombre total de transactions
cat ventes.csv | wc -l > CA_tickets.txt


# CA moyen par établissement
awk '{print $2,$1,$3}' ventes.csv | awk '{sums[$1] += $3; counts[$1] += $2} END>


# CA total
cat ventes.csv | awk -F ',' '{sum += $3} END {print sum}' > CA_total.txt
