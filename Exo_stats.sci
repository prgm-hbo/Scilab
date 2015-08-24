// ======================================================================================================
// Exo 1

X = grand(1, 40, "nor", 0, 4);
X = abs(floor(X));

// Représentation graphique de X
bar(X)

// 2 colonnes : 1ère colonne = valeurs de X par ordre croissant, 2e colonne = effectif correspondant
M = tabul(X, "i")

// Représentation graphique de l'effectifs des modalités
clf, bar(M(:,1), M(:,2))

// le mode est l'effectif de la modalité la plus nombreuse (1)

// X trié par ordre croissant
Y = gsort(X, "g", "i")

clf, bar(Y)

// Diagramme des fréquences cumulées
clf, bar(M(:,1), cumsum(M(:,2)))

// ======================================================================================================
// Exo 2

// 1000 séries de 6 lancers de pièces, comptant les piles dans X(k)
X = grand(1, 1000, "bin", 6, 0.5);

// Représentation par histogramme
histplot([-1:6], X)  // 7 classes [, 0], ], 1], ], 2], ], 3], ], 4], ], 5], ], 6] piles dans une série de 6 lancers

// Exo_stats_2.png

// Représentation erronée
histplot(7, X) // 7 classes automatiques de largeur 6/7

// Exo_stats_2c.png

b = [-1:6];
[ind, occ] = dsearch(X, b);

// Pour chaque classe = nb de piles obtenus dans la série de 6, nombre obtenu de séries
occ

Y = binomial(0.5, 6);
bar(0:6, Y, width=0.4, "red")

// Exo_stats_2b.png

// Sur l'histogramme erroné

// Exo_stats_2d.png

