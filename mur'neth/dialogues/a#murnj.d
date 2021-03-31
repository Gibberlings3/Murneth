BEGIN ~A#MURNJ~

//Conversation initial states triggered on entering areas.

IF
~AreaCheck("%ValleyoftheTombs%")
Global("A#MurnPostMinesChat","LOCALS",0)~ THEN BEGIN MurnPostMines
SAY @0
IF ~~ THEN REPLY @1 EXIT
IF ~~ THEN REPLY @2 GOTO MurnOozeExplain
END

IF
~AreaCheck("%Candlekeep_Library_L1%")
Global("A#MurnCandlekeep","LOCALS",0)~ THEN BEGIN MurnCandlekeep
SAY @3
IF ~~ THEN REPLY @4 EXIT
IF ~~ THEN REPLY @5 GOTO FewCandlekeep
IF ~~ THEN REPLY @6 GOTO CandlekeepSecret
END

IF
~AreaCheck("%IceIsland%")
Global("A#MurnIce","LOCALS",0)~ THEN BEGIN MurnIceIsland
SAY @7
IF ~~ THEN REPLY @8 GOTO IceCave
IF ~~ THEN REPLY @9 EXIT
IF ~~ THEN REPLY @10 GOTO IceSlime
IF ~~ THEN REPLY @11 EXIT
END

IF
~AreaCheck("%Undercity%")
Global("A#MurnFinal","LOCALS",0)~ THEN BEGIN MurnFinalArea
SAY @12
IF ~~ THEN REPLY @13 EXIT
IF ~~ THEN REPLY @14 GOTO FinalBless
IF ~~ THEN REPLY @15 GOTO FinalThanks
IF ~~ THEN REPLY @16 GOTO FinalDie
IF ~~ THEN REPLY @17 EXIT
END

IF
~AreaCheck("%NashkelMines_L4%")
Global("A#MurnKobold","LOCALS",0)~ THEN BEGIN MurnKobold
SAY @100
IF ~~ THEN REPLY @101 EXIT
IF ~~ THEN REPLY @102 GOTO Food
IF ~~ THEN REPLY @103 EXIT
END

//Start of replies.

IF ~~ THEN BEGIN MurnOozeExplain
SAY @18
=
@19
IF ~~ THEN REPLY @20 EXIT
IF ~~ THEN REPLY @21 EXIT
END

IF ~~ THEN BEGIN FewCandlekeep
SAY @22
IF ~~ THEN REPLY @6 GOTO CandlekeepSecret
IF ~~ THEN REPLY @23 EXIT
IF ~~ THEN REPLY @24 EXIT
END

IF ~~ THEN BEGIN CandlekeepSecret
SAY @25
IF ~~ THEN REPLY @26 EXIT
IF ~~ THEN REPLY @27 EXIT
END

IF ~~ THEN BEGIN IceCave
SAY @28
IF ~~ THEN REPLY @29 EXIT
IF ~~ THEN REPLY @30 EXIT
IF ~~ THEN REPLY @31 GOTO IceSlime
END

IF ~~ THEN BEGIN IceSlime
SAY @32
IF ~~ THEN REPLY @33 EXIT
IF ~~ THEN REPLY @34 EXIT
END

IF ~~ THEN BEGIN FinalBless
SAY @35
= @36
IF ~~ THEN REPLY @37 EXIT
IF ~~ THEN REPLY @38 EXIT
IF ~~ THEN REPLY @39 EXIT
IF ~~ THEN REPLY @40 EXIT
IF ~~ THEN REPLY @41 EXIT
END

IF ~~ THEN BEGIN FinalThanks
SAY @42
= @43
IF ~~ THEN REPLY @44 EXIT
IF ~~ THEN REPLY @45 EXIT
IF ~~ THEN REPLY @46 EXIT
IF ~~ THEN REPLY @47 EXIT
IF ~~ THEN REPLY @48 EXIT
IF ~~ THEN REPLY @49 EXIT
END

IF ~~ THEN BEGIN FinalDie
SAY @50
IF ~~ THEN REPLY @51 EXIT
IF ~~ THEN REPLY @52 EXIT
IF ~~ THEN REPLY @53 EXIT
IF ~~ THEN REPLY @54 EXIT
IF ~~ THEN REPLY @55 EXIT
END

IF ~~ THEN BEGIN Food
SAY @104
IF ~~ THEN REPLY @105 EXIT
IF ~~ THEN REPLY @106 GOTO Vertebrates
END

IF ~~ THEN BEGIN Vertebrates
SAY @107
IF ~~ THEN REPLY @108 GOTO MurnLeaves
IF ~~ THEN REPLY @109 GOTO PreyMiners
IF ~~ THEN REPLY @110 EXIT
END

IF ~~ THEN BEGIN MurnLeaves
SAY @111
IF ~~ THEN DO ~ActionOverride("A#MURN",LeaveParty())
ReallyForceSpellRES("A#GHAUN1","A#MURN")
ActionOverride("A#MURN",EscapeArea())
SetGlobal("A#MURNRETURN","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN PreyMiners
SAY @112
IF ~~ THEN REPLY @113 GOTO Prey2
IF ~~ THEN REPLY @114 GOTO Prey3
IF ~~ THEN REPLY @115 EXIT
END

IF ~~ THEN BEGIN Prey3
SAY @116
IF ~~ THEN REPLY @117 GOTO MurnLeaves
IF ~~ THEN REPLY @118 EXIT
END

//CHAINs

CHAIN IF ~~ THEN ~A#MURNJ~ Prey2
@119
== ~%XZAR_JOINED%~ IF ~InParty("Xzar")
See("Xzar")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!Dead("Xzar")~ THEN @120
== A#MURNJ @121
EXIT

