BEGIN ~A#MURN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN MeetMurn
SAY @0
=
@1
IF ~~ THEN REPLY @2 GOTO MurnInvestigate
IF ~~ THEN REPLY @3 GOTO MurnInvestigate
IF ~~ THEN REPLY @4 GOTO MurnFight
IF ~~ THEN REPLY @5 GOTO MurnInvestigate
IF ~~ THEN REPLY @6 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN MeetMurnAgain
SAY @7
IF ~~ THEN REPLY @3 GOTO MurnInvestigate
IF ~~ THEN REPLY @4 GOTO MurnFight
IF ~~ THEN REPLY @5 GOTO MurnInvestigate
IF ~~ THEN REPLY @6 EXIT
END

IF ~~ THEN BEGIN MurnFight
SAY @8
IF ~~ THEN DO ~ReallyForceSpellRES("A#GHAUN1","A#MURN")
ActionOverride("A#Murn",Enemy())
ActionOverride("A#Murn",Attack(NearestEnemyOf(Myself))~ JOURNAL @9 EXIT
END

IF ~~ THEN BEGIN MurnInvestigate
SAY @10
IF ~~ THEN REPLY @11 GOTO MurnIron
IF ~~ THEN REPLY @12 GOTO MurnGhaun
IF ~~ THEN REPLY @13 GOTO MurnGhaun
END

IF ~~ THEN BEGIN MurnIron
SAY @14
=
@15
IF ~~ THEN REPLY @16 GOTO MurnGhaun
IF ~~ THEN REPLY @17 GOTO MurnReject
IF ~~ THEN REPLY @18 GOTO MurnJoin
IF ~~ THEN REPLY @19 GOTO MurnReject
IF ~~ THEN REPLY @20 GOTO MurnFight
IF ~~ THEN REPLY @21 GOTO MurnJoin
END

IF ~~ THEN BEGIN MurnJoin
SAY @22
IF ~~ THEN DO ~SetGlobal("A#MurnJoined","GLOBAL",1) JoinParty()~ JOURNAL @23 EXIT
END

IF ~~ THEN BEGIN MurnReject
SAY @24
IF ~~ THEN JOURNAL @25 EXIT
END

CHAIN IF ~~ THEN ~A#MURN~ MurnGhaun
@26
== ~%JAHEIRA_BANTER%~ IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",STATE_SLEEPING)
!Dead("JAHEIRA")~ THEN @27
== ~%VICONIA_BANTER%~ IF ~InParty("VICONIA")
See("VICONIA")
!StateCheck("VICONIA",STATE_SLEEPING)
!Dead("VICONIA")~ THEN @28
== ~A#MURN~ @29
== ~%EDWIN_BANTER%~ IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",STATE_SLEEPING)
!Dead("EDWIN")~ THEN @30
== ~A#MURN~ @31
== ~%GARRICK_BANTER%~ IF ~InParty("GARRI")
See("GARRICK")
!StateCheck("GARRICK",STATE_SLEEPING)
!Dead("GARRICK")~ THEN @32
END
IF ~~ THEN REPLY @33 GOTO MurnFight
IF ~~ THEN REPLY @34 EXIT
IF ~~ THEN REPLY @35 GOTO MurnFight
IF ~~ THEN REPLY @36 GOTO MurnIron

