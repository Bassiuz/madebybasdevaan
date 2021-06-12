
import '../components/model/creation.dart';

List<Creation> buildCreations() {
  return List.from([
          new Creation(key:"asdfasdf", 
            content: '''# Phocus formam deum nutrix est leonem

## Pendentia teneram iuvenemque supero orbem prius auras

**Lorem markdownum** primo, declivia Iulo pomoque, est opes.
[Quos](http://iunctoque-dictis.net/sunt) exitio resistit bisulco est prompsit
perdidit, rogavit **e** domum corpora anima!

> Tenet currebam, nec est pars **sedes**, papavera quorum *est cecidit* longo
> redeunt, **et** est! Refert candescere frustra nomina pectoribusque est opifer
> certum.

Tristia genitoris artes. Ut ustus o superis petitur crudelis a gravis sublime
triplices aqua ego. Ad cerva oppositas, plumis quod, quem, tum mori iacentem
cornibus iussa *caput digitis*. Me iuga quo latuisse alebat, *odoribus* spatium
Aurora, ab. Triste auro comitante accipit invidiae effundit levat; sine
**fessa** triceps animasse Phaethon parum terras ne.

## Tuas neque modo emisit''', 
            title: "Phocus formam deum nutrix est leonem", 
            description: "Pendentia teneram iuvenemque supero orbem prius auras", 
            imageUrl: "https://picsum.photos/1200/300"), 
          new Creation(key:"12341234", 
            content: '''# Phocus formam deum nutrix est leonem

## Pendentia teneram iuvenemque supero orbem prius auras

**Lorem markdownum** primo, declivia Iulo pomoque, est opes.
[Quos](http://iunctoque-dictis.net/sunt) exitio resistit bisulco est prompsit
perdidit, rogavit **e** domum corpora anima!

> Tenet currebam, nec est pars **sedes**, papavera quorum *est cecidit* longo
> redeunt, **et** est! Refert candescere frustra nomina pectoribusque est opifer
> certum.

Tristia genitoris artes. Ut ustus o superis petitur crudelis a gravis sublime
triplices aqua ego. Ad cerva oppositas, plumis quod, quem, tum mori iacentem
cornibus iussa *caput digitis*. Me iuga quo latuisse alebat, *odoribus* spatium
Aurora, ab. Triste auro comitante accipit invidiae effundit levat; sine
**fessa** triceps animasse Phaethon parum terras ne.

## Tuas neque modo emisit''', 
            title: "Locuta freta est", 
            description: "Tincta aut quo naides. Lorem markdownum mitissima narrat in alvum sic ut ad Ophiusiaque bellique.", 
            imageUrl: "https://picsum.photos/800/301"),
        ]);
}


  Creation getCreationForTitle(String title) {
    return buildCreations().where((creation) => creation.key == title).first;
  }
