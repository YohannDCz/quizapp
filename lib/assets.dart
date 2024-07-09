import 'package:quizapp/shared/models.dart';

final List<Quiz> quizzes = [
  Quiz(
    id: '0',
    title: 'quiz sur les moulages de Pompéi',
    description: 'Testez vos connaissances sur les moulages des victimes de Pompéi.',
    video: '',
    topic: 'pompei',
    questions: [
      Question(
        text: 'Son ventre est gonflé car la victime :',
        options: [
          Option(value: 'la victime était enceinte', correct: false),
          Option(value: 'la victime avait le ventre gonflé suite à la noyade dans la boue', correct: true),
          Option(value: 'la victime se protégeait avec un sac.', correct: false),
          Option(value: 'le moulage a un défaut.', correct: false),
        ],
      ),
      Question(
        text: 'Qu\'est-ce qui est visible au bout de la main ?',
        options: [
          Option(value: 'Les os au bout des doigts', correct: true),
          Option(value: 'un tissu', correct: false),
          Option(value: 'des résidus de nourriture', correct: false),
          Option(value: 'un sac plastique', correct: false),
        ],
      ),
      Question(
        text: 'Pourquoi le bras droit de la personne manque-t-il ?',
        options: [
          Option(value: 'Le plâtre a été introduit par le bras droit.', correct: true),
          Option(value: 'La catastrophe l\'a emporté.', correct: false),
          Option(value: 'La personne n\'avait pas de bras droit.', correct: false),
          Option(value: 'Il ne manque pas de bras.', correct: false),
        ],
      ),
      Question(
        text: 'Quelles informations ce moulage apporte-t-il sur le type de tenues portées à l\'Antiquité ?',
        options: [
          Option(value: 'Ils ne portaient pas de sous-vêtements', correct: false),
          Option(value: 'Ils avaient tous un chapeau', correct: false),
          Option(value: 'Ils portaient des chaussures', correct: true, detail: 'On peut voir des semelles cloutées et lacées autour de la cheville. Les moulages ont permis de démontrer que les romains portaient des chaussures, les semelles étaient recouvertes de clous pour retarder leurs usures.'),
          Option(value: 'Ils ne portaient pas d\'habits', correct: false),
        ],
      ),
      Question(
        text: 'Quels éléments pouvons-nous voir sur le visage de la victime ?',
        options: [
          Option(value: 'Ses yeux, ses cheveux et ses oreilles.', correct: false),
          Option(value: 'Uniquement sa bouche.', correct: false),
          Option(value: 'Son nez, ses joues et sa bouche.', correct: true, detail: 'Bien, le nez et les joues sont visibles. Il a notamment la bouche ouverte, d\'ailleurs on peut y voir quelques dents restantes.'),
          Option(value: 'Sa barbe.', correct: false),
        ],
      ),
      Question(
        text: 'Quels sont les vêtements et accessoires que porte cette victime ?',
        options: [
          Option(value: 'Une bague, un pantalon retroussé, un tissu et des semelles.', correct: true, detail: 'En effet ! On peut percevoir un anneau de fer sur son petit doigt.'),
          Option(value: 'Une robe, un collier et des semelles.', correct: false),
          Option(value: 'Une salopette et des semelles.', correct: false),
          Option(value: 'Un short, des tongs et une bague.', correct: false),
        ],
      ),
      Question(
        text: 'Est-ce qu\'on peut apercevoir dans la forme du plâtre des poils ?',
        options: [
          Option(value: 'Non.', correct: false),
          Option(value: 'Oui, les sourcils, la moustache et les poils pubiens.', correct: true, detail: 'Les poils peuvent adhérer au plâtre.'),
          Option(value: 'Oui, seulement la moustache.', correct: false),
          Option(value: 'Oui, seulement les cheveux.', correct: false),
        ],
      ),
      Question(
        text: 'Selon vous, cette victime se rasait-elle ?',
        options: [
          Option(value: 'Oui.', correct: true, detail: 'Il semble s\'être rasé de près.'),
          Option(value: 'Non, le rasoir n\'existait pas', correct: false),
          Option(value: 'Non, les poils sont longs', correct: false),
          Option(value: 'Je ne sais pas.', correct: false),
        ],
      ),
      Question(
        text: 'Pouvons-nous interpréter le métier de cette victime à sa tenue ?',
        options: [
          Option(value: 'Non.', correct: false),
          Option(value: 'Oui, il s\'agit probablement d\'un militaire.', correct: true, detail: 'Des traces de sangles sont visibles sur le bas ventre (comme la partie inférieur d\'une cuirasse).'),
          Option(value: 'Oui, il s\'agit probablement d\'un boulanger.', correct: false),
          Option(value: 'Oui, il s\'agit d\'un esclave.', correct: false),
        ],
      ),
    ],
  ),
  Quiz(
    id: '1',
    title: 'quiz sur les victimes de Pompéi',
    description: 'Testez vos connaissances sur les victimes de l\'éruption du Vésuve à Pompéi.',
    video: '',
    topic: 'pompei',
    questions: [
      Question(
        text: 'À votre avis, quel est le sexe de ces deux individus ?',
        options: [
          Option(value: 'Deux femmes', correct: true),
          Option(value: 'Deux hommes', correct: false),
          Option(value: 'Une femme et un homme', correct: false),
          Option(value: 'On ne peut pas savoir.', correct: false),
        ],
      ),
      Question(
        text: 'Dans quelle position sont mortes ces deux victimes ?',
        options: [
          Option(value: 'allongée sur le dos', correct: false),
          Option(value: 'allongée sur le ventre', correct: true),
          Option(value: 'accroupie', correct: false),
          Option(value: 'assise', correct: false),
        ],
      ),
      Question(
        text: 'Le visage de la victime à gauche est-il perceptible ?',
        options: [
          Option(value: 'Non, mais un bras, les jambes et une bande autour de la poitrine sont visibles.', correct: true),
          Option(value: 'Oui.', correct: false),
          Option(value: 'Non, seul le pied droit est visible', correct: false),
          Option(value: 'Non, seul le pied gauche est visible', correct: false),
        ],
      ),
      Question(
        text: 'Les vêtements sont-ils perceptibles ?',
        options: [
          Option(value: 'Non, les vêtements ont été entièrement brûlés et ne sont pas visibles.', correct: false),
          Option(value: 'Non, seulement les bijoux et accessoires sont visibles.', correct: false),
          Option(value: 'Non, seul le contour du corps est visible.', correct: false),
          Option(value: 'Oui, on voit les coutures, les dentelles et les bras couverts jusqu\'aux poignets, probablement grâce à du lin.', correct: true),
        ],
      ),
      Question(
        text: 'Les archéologues peuvent-ils deviner l\'âge de ces victimes ?',
        options: [
          Option(value: 'Oui, en utilisant des techniques d\'analyse ADN sur les restes.', correct: true, detail: 'Oui, la première victime aurait entre 15 et 16 ans et la seconde entre 30 et 40 ans.'),
          Option(value: 'Non, les corps sont trop dégradés pour permettre une estimation.', correct: false),
          Option(value: 'Oui, en léchant les ossements pour observer l\'acidité.', correct: false),
          Option(value: 'Non, après la mort et sans document écrit il est impossible de deviner l\'âge de la victime.', correct: false),
        ],
      ),
      Question(
        text: 'Que fait la victime couchée sur le côté gauche ?',
        options: [
          Option(value: 'Elle se protège', correct: true, detail: "Son attitude montre qu'elle se protège la bouche avec un tissu."),
          Option(value: 'Elle regarde le ciel en priant', correct: false),
          Option(value: 'Elle semble dormir paisiblement', correct: false),
          Option(value: 'Elle se brosse les dents', correct: false),
        ],
      ),
      Question(
        text: 'Les victimes portaient-elles des chaussures ?',
        options: [
          Option(value: 'Oui, on voit une sorte de bottine ou de sandale brodée', correct: true),
          Option(value: 'Non, ça n\'existait pas encore', correct: false),
          Option(value: 'Non mais seulement des chaussettes', correct: false),
          Option(value: 'Non, mais on peut apercevoir des traces de chaussure à proximité de leurs pieds', correct: false),
        ],
      ),
      Question(
        text: 'Regardez attentivement les mains, que peut-on y voir ?',
        options: [
          Option(value: 'Deux anneaux.', correct: true, detail: 'La plus vieille porte deux anneaux de fer autour d\'un doigt, cela atteste du statut de pauvreté ou de condition humble de cette personne, surement esclave à l\'Antiquité.'),
          Option(value: 'Un plâtre', correct: false),
          Option(value: 'Des clés', correct: false),
          Option(value: 'Une montre', correct: false),
        ],
      ),
      Question(
        text: 'Que peut-on dire des conditions de décès de ces deux jeunes femmes ?',
        options: [
          Option(value: 'Leur mort semble apaisée comme si elles s\'étaient endormies', correct: true),
          Option(value: 'Leur mort était effroyable, elles semblent très tendues', correct: false),
          Option(value: 'Leur mort semble avoir été causée par une maladie', correct: false),
          Option(value: 'Leur mort semble les avoir mis dans un état de panique générale', correct: false),
        ],
      ),
      Question(
        text: 'Quelle coiffure l\'une des deux femmes porte ?',
        options: [
          Option(value: 'un chignon', correct: false),
          Option(value: 'une couette', correct: false),
          Option(value: 'une tresse', correct: true),
          Option(value: 'une frange', correct: false),
        ],
      ),
    ],
  ),
  Quiz(
    id: '2',
    title: 'quiz sur les techniques de moulage à Pompéi',
    description: 'Testez vos connaissances sur les techniques de moulage utilisées pour préserver les corps des victimes de Pompéi.',
    video: '',
    topic: 'pompei',
    questions: [
      Question(
        text: 'Qui est le premier à avoir utilisé la technique des moulages en creux pour les victimes de Pompéi ?',
        options: [
          Option(value: 'Carlo Levi', correct: false),
          Option(value: 'Giuseppe Fiorelli', correct: true),
          Option(value: 'Amedeo Maiuri', correct: false),
          Option(value: 'Pompeo Sarnelli', correct: false),
        ],
      ),
      Question(
        text: 'Comment la technique de moulage a-t-elle été réalisée pour capturer les formes des victimes ?',
        options: [
          Option(value: 'En remplissant les cavités laissées par les corps avec du plâtre', correct: true, detail: 'Grâce à une nouvelle technique de fouille: Celle des fouiulles horizontales. Les cavités creuses des moulages ont pu être remplies de plâtre.'),
          Option(value: 'En sculptant directement des statues à partir de descriptions', correct: false),
          Option(value: 'En moulant les cavités laissées par les corps avec de l\'argile.', correct: false),
          Option(value: 'En taillant de la pierre de roche.', correct: false),
        ],
      ),
      Question(
        text: 'Pourquoi les moulages sont-ils important pour les archéologues ?',
        options: [
          Option(value: 'Ils montrent les dernières expressions des victimes', correct: true),
          Option(value: 'Ils aident à comprendre les vêtements et les accessoires de l\'époque', correct: false),
          Option(value: 'Ils fournissent des détails sur la vie quotidienne de pompéi', correct: false),
          Option(value: 'Toute ces réponses', correct: false),
        ],
      ),
      Question(
        text: 'Pendant combien de temps l\'éruption du Vésuve a-t-elle duré ?',
        options: [
          Option(value: 'Quelques heures', correct: true, detail: 'L\'éruption a presque durée 24 heures.'),
          Option(value: 'Quelques jours', correct: false),
          Option(value: 'Quelques semaines', correct: false),
          Option(value: 'Quelques mois', correct: false),
        ],
      ),
      Question(
        text: 'Combien de victimes voyez-vous ?',
        options: [
          Option(value: '11', correct: false),
          Option(value: '13', correct: true, detail: '13 corps ont été trouvés lors des fouilles en 1961.'),
          Option(value: '10', correct: false),
          Option(value: '14', correct: false),
        ],
      ),
      Question(
        text: 'A votre avis, combien il y a d\'enfants (bébés compris) ?',
        options: [
          Option(value: '5', correct: false),
          Option(value: '3', correct: true),
          Option(value: '2', correct: false),
          Option(value: '1', correct: false),
        ],
      ),
      Question(
        text: 'À votre avis, les corps ont-ils été déplacés par les archéologues ?',
        options: [
          Option(value: 'Oui, pour faire de la place au verger.', correct: false),
          Option(value: 'Non, car ils les auraient détruit en les déplaçant.', correct: true),
          Option(value: 'Non car leurs déplacements aurait été considéré comme irrespectueux envers les victimes.', correct: false),
          Option(value: 'Oui, ils n\'ont pas été trouvés ici mais 3,5m plus haut.', correct: false, detail: 'Les corps ont été trouvés ailleurs, il s\'agit des fuyard ayant échappé à la premiére partie de l\'éruption.'),
        ],
      ),
      Question(
        text: 'À votre avis, pour quelle raison sont-ils tous réunis à cet endroit ?',
        options: [
          Option(value: 'Ces personnes se sont allongées dans le jardin et sont morts dans cette position', correct: false),
          Option(value: 'Ces personnes fuyaient vers Porta Nocera et vers le port pour échapper à cet événement.', correct: true, detail: 'La Porta Nocera est celle située la plus proche du port'),
          Option(value: 'Ces personnes se sont abrités de l\'éruption sous les arbres du verger.', correct: false),
          Option(value: 'C\'est un cimetière antique.', correct: false),
        ],
      ),
      Question(
        text: 'La plus jeune victime de Pompéi est âgée entre 12 et 14 mois, où se situe-t-elle selon vous ?',
        options: [
          Option(value: 'troisième victime en partant de la gauche', correct: false),
          Option(value: 'troisième victime en partant de la droite', correct: true, detail: 'C\'est grâce à des analyses faites sur la denture que nous pouvons connaître l\'age des défunts.'),
          Option(value: 'Au centre', correct: false),
          Option(value: 'tout à droite', correct: false),
        ],
      ),
      Question(
        text: 'D\'après vous, que faisait la première victime en partant de la gauche ?',
        options: [
          Option(value: 'Elle regardait les autres victimes', correct: false),
          Option(value: 'Elle cherchait de l\'air frais', correct: false),
          Option(value: 'Elle tentait une dernière fois de se relever', correct: true),
          Option(value: 'Elle écrivait un dernier message sur un morceau de parchemin', correct: false),
        ],
      ),
      Question(
        text: 'Pouvons-nous retrouver des animaux moulés ?',
        options: [
          Option(value: 'Non, uniquement des humains', correct: false),
          Option(value: 'Oui.', correct: true, detail: 'Il y a des moulages d\'animaux à Pompéi comme ceux de chiens et de chevaux.'),
          Option(value: 'Non, uniquement des objets et des humains ont été moulés.', correct: false),
          Option(value: 'Non, les animaux se sont enfuis avant l\'éruption.', correct: false),
        ],
      ),
    ],
  ),
];
