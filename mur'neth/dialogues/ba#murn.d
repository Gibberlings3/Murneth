BEGIN ~BA#MURN~

IF ~CombatCounter(0)
!See([ENEMY])
Global("A#MurnPC1","LOCALS",0)
See(Player1)
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
!Dead("A#MURN")~ THEN BEGIN Murn_PC_1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("A#MurnPC1","LOCALS",1)~ GOTO Murn_PC_1_Ghaun
IF ~~ THEN REPLY @2 DO ~SetGlobal("A#MurnPC1","LOCALS",1)~ GOTO Murn_PC_1_Slime
IF ~~ THEN REPLY @3 DO ~SetGlobal("A#MurnPC1","LOCALS",1)~ GOTO Murn_PC_1_Ghaun
IF ~~ THEN REPLY @4 DO ~SetGlobal("A#MurnPC1","LOCALS",1)~ GOTO Murn_PC_1_Gods
IF ~~ THEN REPLY @5 DO ~SetGlobal("A#MurnPC1","LOCALS",1)~ GOTO Murn_PC_1_Special
IF ~~ THEN REPLY @6 DO ~SetGlobal("A#MurnPC1","LOCALS",1)~ EXIT
END

IF ~CombatCounter(0)
!See([ENEMY])
Global("A#MurnPC1","LOCALS",1)
See(Player1)
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
!Dead("A#MURN")~ THEN BEGIN Murn_PC_2
SAY @7
IF ~~ THEN REPLY @8 DO ~SetGlobal("A#MurnPC1","LOCALS",2)~ GOTO Murn_PC_2_Mystic
IF ~~ THEN REPLY @9 DO ~SetGlobal("A#MurnPC1","LOCALS",2)~ EXIT
IF ~~ THEN REPLY @10 DO ~SetGlobal("A#MurnPC1","LOCALS",2)~ GOTO Murn_PC_2_Smooth
IF ~~ THEN REPLY @11 DO ~SetGlobal("A#MurnPC1","LOCALS",2)~ GOTO Murn_PC_2_Wrong
END

IF ~~ THEN BEGIN Murn_PC_1_Gods
SAY @12
IF ~~ THEN REPLY @1 GOTO Murn_PC_1_Ghaun
IF ~~ THEN REPLY @13 GOTO Murn_PC_1_Slime
IF ~~ THEN REPLY @14 GOTO Murn_PC_1_Special
END

IF ~~ THEN BEGIN Murn_PC_1_Ghaun
SAY @15
IF ~~ THEN REPLY @16 GOTO Murn_PC_1_Servant
IF ~~ THEN REPLY @5 GOTO Murn_PC_1_Special
END

IF ~~ THEN BEGIN Murn_PC_1_Slime
SAY @17
IF ~~ THEN REPLY @18 GOTO Murn_PC_1_Servant
IF ~~ THEN REPLY @5 GOTO Murn_PC_1_Special
IF ~~ THEN REPLY @19 GOTO Murn_PC_1_Servant
END

IF ~~ THEN BEGIN Murn_PC_1_Servant
SAY @20
IF ~~ THEN REPLY @21 EXIT
IF ~~ THEN REPLY @22 EXIT
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Murn_PC_1_Special
SAY @24
IF ~~ THEN REPLY @18 GOTO Murn_PC_1_Servant
IF ~~ THEN REPLY @19 GOTO Murn_PC_1_Servant
END

IF ~~ THEN BEGIN Murn_PC_2_Mystic
SAY @25
IF ~~ THEN REPLY @26 GOTO Murn_PC_2_Tymora
IF ~~ THEN REPLY @27 EXIT
IF ~~ THEN REPLY @28 GOTO Murn_PC_2_Learn
END

IF ~~ THEN BEGIN Murn_PC_2_Learn
SAY @29
IF ~~ THEN REPLY @30 EXIT
IF ~~ THEN REPLY @31 EXIT
IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN Murn_PC_2_Tymora
SAY @33
IF ~~ THEN REPLY @34 EXIT
IF ~~ THEN REPLY @35 EXIT
IF ~~ THEN REPLY @36 EXIT
END

IF ~~ THEN BEGIN Murn_PC_2_Smooth
SAY @37
IF ~~ THEN REPLY @8 GOTO Murn_PC_2_Mystic
IF ~~ THEN REPLY @38 GOTO Murn_PC_2_Learn
END

IF ~~ THEN BEGIN Murn_PC_2_Wrong
SAY @39
IF ~~ THEN REPLY @8 GOTO Murn_PC_2_Mystic
IF ~~ THEN REPLY @40 GOTO Murn_PC_2_Suffer
IF ~~ THEN REPLY @41 EXIT
END

IF ~~ THEN BEGIN Murn_PC_2_Suffer
SAY @42
IF ~~ THEN REPLY @43 GOTO Murn_PC_2_Ilmater
IF ~~ THEN REPLY @44 GOTO Murn_PC_2_Learn
IF ~~ THEN REPLY @45 EXIT
IF ~~ THEN REPLY @46 EXIT
END

IF ~~ THEN BEGIN Murn_PC_2_Ilmater
SAY @47
IF ~~ THEN REPLY @48 EXIT
IF ~~ THEN REPLY @49 EXIT
IF ~~ THEN REPLY @50 EXIT
END

CHAIN IF ~CombatCounter(0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!See([ENEMY])
InParty("AJANTIS")
See("AJANTIS")
!StateCheck("AJANTIS",CD_STATE_NOTVALID)
Global("A#MURN_AJANTIS","LOCALS",0)
!Dead("A#MURN")
!Dead("AJANTIS")~ THEN BA#MURN Murn_Ajantis
@51
DO ~SetGlobal("A#MURN_AJANTIS","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @52
== ~BA#MURN~ @53
== ~%AJANTIS_BANTER%~ @54
== ~%YESLICK_BANTER%~ IF ~InParty("YESLICK")
See("YESLICK")
!StateCheck("YESLICK",CD_STATE_NOTVALID)
!Dead("Yeslick")~ THEN @55
== ~%DYNAHEIR_BANTER%~ IF ~InParty("DYNAHEIR")
See("DYNAHEIR")
!StateCheck("DYNAHEIR",CD_STATE_NOTVALID)
!Dead("DYNAHEIR")~ THEN @56
== ~BA#MURN~ @57
EXIT

CHAIN IF ~CombatCounter(0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!See([ENEMY])
InParty("ALORA")
See("ALORA")
!StateCheck("ALORA",CD_STATE_NOTVALID)
Global("A#MURN_Alora","LOCALS",0)
!Dead("ALORA")~ THEN ~BA#MURN~ Murn_Alora
@58
DO ~SetGlobal("A#MURN_Alora","LOCALS",1)~
== ~%ALORA_BANTER%~ @59
== ~BA#MURN~ @60
== ~%ALORA_BANTER%~ @61
== ~BA#MURN~ @62
== ~%XZAR_BANTER%~ IF ~InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",CD_STATE_NOTVALID)
!Dead("XZAR")~ THEN @63
== ~%ALORA_BANTER%~ @64
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("BRANWEN")
See("BRANWEN")
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!StateCheck("BRANWEN",CD_STATE_NOTVALID)
Global("A#MURN_BRANWEN","LOCALS",0)
!Dead("A#MURN")
!Dead("BRANWEN")~ THEN ~BA#MURN~ A#MURN_Branwen_1
@65
DO ~SetGlobal("A#MURN_BRANWEN","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @66
== ~A#MURN~ @67
== ~%BRANWEN_BANTER%~ @68
== ~%SAFANA_BANTER%~ IF ~InParty("SAFANA")
See("SAFANA")
!StateCheck("SAFANA",CD_STATE_NOTVALID)
!Dead("SAFANA")~ THEN @69
== ~%BRANWEN_BANTER%~ IF ~InParty("SAFANA")
See("SAFANA")
!StateCheck("SAFANA",CD_STATE_NOTVALID)
!Dead("SAFANA")~ THEN @70
== ~A#MURN~ @71
== ~%BRANWEN_BANTER%~ @72
== ~A#MURN~ @73
== ~%BRANWEN_BANTER%~ @74
== ~A#MURN~ @75
== ~%BRANWEN_BANTER%~ @76
== ~A#MURN~ @77
== ~%BRANWEN_BANTER%~ @78
EXIT

CHAIN IF ~CombatCounter(0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!See([ENEMY])
InParty("CORAN")
See("CORAN")
!StateCheck("CORAN",CD_STATE_NOTVALID)
Global("A#MURN_CORAN","LOCALS",0)
!Dead("A#MURN")
!Dead("CORAN")~ THEN ~%CORAN_BANTER%~ Murn_CORAN
@79
DO ~SetGlobal("A#MURN_CORAN","LOCALS",1)~
== ~BA#MURN~ @80
== ~%CORAN_BANTER%~ @81
== ~%MONTARON_BANTER%~ IF ~InParty("MONTARON")
See("MONTARON")
!StateCheck("MONTARON",CD_STATE_NOTVALID)
!Dead("MONTARON")~ THEN @82
== ~BA#MURN~ @83
== ~%CORAN_BANTER%~ @84
== ~BA#MURN~ @85
== ~%CORAN_BANTER%~ @86
== ~BA#MURN~ @87
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("DYNAHEIR")
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
See("DYNAHEIR")
!StateCheck("DYNAHEIR",CD_STATE_NOTVALID)
Global("A#MURN_DYNAHEIR","LOCALS",0)
!Dead("A#MURN")
!Dead("DYNAHEIR")~ THEN ~BA#Murn~ A#MURN_DYNAHEIR_1
@88
DO ~SetGlobal("A#MURN_DYNAHEIR","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @89
== ~BA#MURN~ @90
== ~%MINSC_BANTER%~ IF ~InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
!Dead("MINSC")~ THEN @91
== ~%DYNAHEIR_BANTER%~ @92
== ~BA#MURN~ @93
== ~%DYNAHEIR_BANTER%~ @94
EXIT

CHAIN IF ~InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",CD_STATE_NOTVALID)
Global("A#MURN_EDWIN","LOCALS",0)
!Dead("A#MURN")
!Dead("EDWIN")~ THEN ~%EDWIN_BANTER%~ Murn_EDWIN_1
@95
DO ~SetGlobal("A#MURN_EDWIN","LOCALS",1)~
== ~%XAN_BANTER%~ IF ~InParty("XAN")
See("XAN")
!StateCheck("XAN",CD_STATE_NOTVALID)
!Dead("XAN")~ THEN @96
== ~%XAN_BANTER%~ IF ~InParty("XAN")
See("XAN")
!StateCheck("XAN",CD_STATE_NOTVALID)
!Dead("XAN")~ THEN @97
== ~BA#MURN~ @98
== ~%EDWIN_BANTER%~ @99
== ~BA#MURN~ @100
== ~%EDWIN_BANTER%~ @101
== ~BA#MURN~ @102
== ~%EDWIN_BANTER%~ @103
== ~BA#MURN~ @104
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("ELDOTH")
See("ELDOTH")
!StateCheck("ELDOTH",CD_STATE_NOTVALID)
Global("A#MURN_ELDOTH","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("ELDOTH")~ THEN ~%ELDOTH_BANTER%~ Murn_ELDOTH
@105
DO ~SetGlobal("A#MURN_ELDOTH","LOCALS",1)~
== ~BA#MURN~ @106
== ~%ELDOTH_BANTER%~ @107
== ~BA#MURN~ @108
== ~%MINSC_BANTER%~ IF ~InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
!Dead("MINSC")~ THEN @109
== ~%ELDOTH_BANTER%~ IF ~InParty("MINSC")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
!Dead("MINSC")~ THEN @110
== ~%ELDOTH_BANTER%~ IF ~OR(4)
!InParty("MINSC")
!See("MINSC")
StateCheck("MINSC",CD_STATE_NOTVALID)
Dead("MINSC")~ THEN @111
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("FALDORN")
See("FALDORN")
!StateCheck("FALDORN",CD_STATE_NOTVALID)
Global("A#MURN_FALDORN","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("FALDORN")~ THEN ~%FALDORN_BANTER%~ MURN_FALDORN_1
@112
DO ~SetGlobal("A#MURN_FALDORN","LOCALS",1)~
== ~BA#MURN~ @113
== ~%FALDORN_BANTER%~ @114
== ~BA#MURN~ @115
== ~%FALDORN_BANTER%~ @116
== ~%FALDORN_BANTER%~ @117
== ~%JAHEIRA_BANTER%~ IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
!Dead("JAHEIRA")~ THEN @118
== ~%FALDORN_BANTER%~ @119
== ~BA#MURN~ @120
== ~%FALDORN_BANTER%~ @121
== ~%FALDORN_BANTER%~ @122
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",CD_STATE_NOTVALID)
Global("A#MURN_GARRICK","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("GARRICK")~ THEN ~%GARRICK_BANTER%~ Murn_GARRICK
@123
DO ~SetGlobal("A#MURN_GARRICK","LOCALS",1)~
== BA#MURN @124
== ~%GARRICK_BANTER%~ @125
== BA#MURN @126
== ~%EDWIN_BANTER%~ IF ~InParty("EDWIN")
See("EDWIN")
!StateCheck("EDWIN",CD_STATE_NOTVALID)
!Dead("EDWIN")~ THEN @127
== ~%GARRICK_BANTER%~ @128
== BA#MURN @129
== ~%GARRICK_BANTER%~ @130
== BA#MURN @131
== ~%GARRICK_BANTER%~ @132
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
Global("A#MURN_IMOEN","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("%IMOEN_DV%")~ THEN ~BA#MURN~ Murn_IMOEN
@133
DO ~SetGlobal("A#MURN_IMOEN","LOCALS",1)~
== ~%IMOEN_BANTER%~ @134
== BA#MURN @135
== ~%IMOEN_BANTER%~ @136
== ~%QUAYLE_BANTER%~ IF ~InParty("QUAYLE")
See("QUAYLE")
!StateCheck("QUAYLE",CD_STATE_NOTVALID)
!Dead("QUAYLE")~ THEN @137
== ~%IMOEN_BANTER%~ @138
== BA#MURN @139
== ~%IMOEN_BANTER%~ @140
== BA#MURN @141
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
InParty("KHALID")
See("KHALID")
!StateCheck("KHALID",CD_STATE_NOTVALID)
Global("A#MURN_JAHEIRA","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("KHALID")
!Dead("JAHEIRA")~ THEN ~BA#MURN~ MURN_JAHEIRA_1
@142
DO ~SetGlobal("A#MURN_JAHEIRA","LOCALS",1)~
== ~%KHALID_BANTER%~ @143
== ~BA#MURN~ @144
== ~%JAHEIRA_BANTER%~ @145
== ~%KHALID_BANTER%~ @146
== ~BA#MURN~ @147
== ~%KHALID_BANTER%~ @148
== ~BA#MURN~ @149
== ~%JAHEIRA_BANTER%~ @150
== ~%KHALID_BANTER%~ @151
== ~%JAHEIRA_BANTER%~ @152
== ~%GARRICK_BANTER%~ IF ~InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",CD_STATE_NOTVALID)
!Dead("GARRICK")~ THEN @153
== ~%KHALID_BANTER%~ IF ~InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",CD_STATE_NOTVALID)
!Dead("GARRICK")~ THEN @154
== ~%JAHEIRA_BANTER%~ IF ~InParty("GARRICK")
See("GARRICK")
!StateCheck("GARRICK",CD_STATE_NOTVALID)
!Dead("GARRICK")~ THEN @155
== ~%KHALID_BANTER%~ @156
== ~%JAHEIRA_BANTER%~ @157
== ~BA#MURN~ @158
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("KAGAIN")
See("KAGAIN")
!StateCheck("KAGAIN",CD_STATE_NOTVALID)
Global("A#MURN_KAGAIN","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("KAGAIN")~ THEN ~%KAGAIN_BANTER%~ Murn_KAGAIN
@159
DO ~SetGlobal("A#MURN_KAGAIN","LOCALS",1)~
== ~BA#MURN~ @160
== ~%KAGAIN_BANTER%~ @161
== ~%MONTARON_BANTER%~ IF ~InParty("MONTARON")
See("MONTARON")
!StateCheck("MONTARON",CD_STATE_NOTVALID)
!Dead("MONTARON")~ THEN @162
== ~BA#MURN~ @163
== ~%KAGAIN_BANTER%~ @164
== ~BA#MURN~ @165
== ~%KAGAIN_BANTER%~ @166
== ~BA#MURN~ @167
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("KHALID")
See("KHALID")
!StateCheck("KHALID",CD_STATE_NOTVALID)
Global("A#MURN_KHALID","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("KHALID")~ THEN ~BA#MURN~ Murn_KHALID_1
@168
DO ~SetGlobal("A#MURN_KHALID","LOCALS",1)~
== ~%KHALID_BANTER%~ @169
== ~BA#MURN~ @170
== ~%KHALID_BANTER%~ @171
== ~%JAHEIRA_BANTER%~ IF ~InParty("JAHEIRA")
See("JAHEIRA")
!StateCheck("JAHEIRA",CD_STATE_NOTVALID)
!Dead("JAHEIRA")~ THEN @172
== ~BA#MURN~ @173
== ~%KHALID_BANTER%~ @174
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("KIVAN")
See("KIVAN")
!StateCheck("KIVAN",CD_STATE_NOTVALID)
Global("A#MURN_KIVAN","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("KIVAN")~ THEN ~BA#MURN~ Murn_KIVAN
@175
DO ~SetGlobal("A#MURN_KIVAN","LOCALS",1)~
== ~%KIVAN_BANTER%~ @176
== ~BA#MURN~ @177
== ~%KIVAN_BANTER%~ @178
== ~BA#MURN~ @179
== ~%KIVAN_BANTER%~ @180
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("MINSC")
InParty("Dynaheir")
!Dead("Dynaheir")
See("MINSC")
!StateCheck("MINSC",CD_STATE_NOTVALID)
Global("A#MURN_MINSC","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("MINSC")~ THEN ~BA#MURN~ Murn_MINSC
@181
DO ~SetGlobal("A#MURN_MINSC","LOCALS",1)~
== ~%MINSC_BANTER%~ @182
== ~%DYNAHEIR_BANTER%~ IF ~See("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)~ THEN @183
== ~BA#MURN~ @184
== ~%MINSC_BANTER%~ @185
== ~BA#MURN~ @186
== ~%MINSC_BANTER%~ @187
== ~BA#MURN~ @188
== ~%MINSC_BANTER%~ @189
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("MONTARON")
See("MONTARON")
!StateCheck("MONTARON",CD_STATE_NOTVALID)
Global("A#MURN_MONTARON","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("MONTARON")~ THEN ~%MONTARON_BANTER%~ Murn_MONTARON
@190
DO ~SetGlobal("A#MURN_MONTARON","LOCALS",1)~
== ~BA#MURN~ @191
== ~%MONTARON_BANTER%~ @192
== ~BA#MURN~ @193
== ~%MONTARON_BANTER%~ @194
== ~BA#MURN~ @195
== ~%KAGAIN_BANTER%~ IF ~InParty("Kagain")
See("Kagain")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!Dead("Kagain")~ THEN @196
== ~%MONTARON_BANTER%~ @197
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("QUAYLE")
See("QUAYLE")
!StateCheck("QUAYLE",CD_STATE_NOTVALID)
Global("A#MURN_QUAYLE","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("QUAYLE")~ THEN ~BA#MURN~ Murn_QUAYLE
@198
DO ~SetGlobal("A#MURN_QUAYLE","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @199
== ~BA#MURN~ @200
== ~%QUAYLE_BANTER%~ @201
== ~BA#MURN~ @202
== ~%QUAYLE_BANTER%~ @203
== ~%XZAR_BANTER%~ IF ~InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",CD_STATE_NOTVALID)
!Dead("XZAR")~ THEN @204
== ~%QUAYLE_BANTER%~ @205
== ~BA#MURN~ @206
== ~%QUAYLE_BANTER%~ @207
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("SAFANA")
See("SAFANA")
!StateCheck("SAFANA",CD_STATE_NOTVALID)
Global("A#MURN_SAFANA","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("SAFANA")~ THEN ~A#MURN~ Murn_SAFANA
@208
DO ~SetGlobal("Garrick_SAFANA","LOCALS",1)~
== ~%SAFANA_BANTER%~ @209
== ~BA#MURN~ @210
== ~%CORAN_BANTER%~ IF ~InParty("coran")
See("coran")
!StateCheck("coran",CD_STATE_NOTVALID)
!Dead("coran")~ THEN @211
== ~%SAFANA_BANTER%~ @212
== ~%SKIE_BANTER%~ IF ~InParty("skie")
See("skie")
!StateCheck("skie",CD_STATE_NOTVALID)
!Dead("skie")~ THEN @213
== ~%SAFANA_BANTER%~ @214
== ~BA#MURN~ @215
== ~%SAFANA_BANTER%~ @216
== ~%SAFANA_BANTER%~ @217
== ~BA#MURN~ @218
== ~%SAFANA_BANTER%~ @219
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("SHARTEEL")
See("SHARTEEL")
!StateCheck("SHARTEEL",CD_STATE_NOTVALID)
Global("A#MURN_SHARTEEL","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("SHARTEEL")~ THEN ~%SHARTEEL_BANTER%~ MURN_SHARTEEL
@220
DO ~SetGlobal("A#MURN_SHARTEEL","LOCALS",1)~
== ~BA#MURN~ @221
== ~%SHARTEEL_BANTER%~ @222
== ~BA#MURN~ @223
== ~%QUAYLE_BANTER%~ IF ~InParty("QUAYLE")
See("QUAYLE")
!StateCheck("QUAYLE",CD_STATE_NOTVALID)
!Dead("QUAYLE")~ THEN @224
== ~%SHARTEEL_BANTER%~ @225
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("SKIE")
See("SKIE")
!StateCheck("SKIE",CD_STATE_NOTVALID)
Global("A#MURN_SKIE","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("SKIE")~ THEN ~%SKIE_BANTER%~ Murn_SKIE
@226
DO ~SetGlobal("A#MURN_SKIE","LOCALS",1)~
== ~%ELDOTH_BANTER%~ IF ~InParty("ELDOTH")
See("ELDOTH")
!StateCheck("ELDOTH",CD_STATE_NOTVALID)
!Dead("ELDOTH")~ THEN @227
== ~%SKIE_BANTER%~ IF ~InParty("ELDOTH")
See("ELDOTH")
!StateCheck("ELDOTH",CD_STATE_NOTVALID)
!Dead("ELDOTH")~ THEN @228
== ~BA#MURN~ @229
== ~%SKIE_BANTER%~ @230
== ~BA#MURN~ @231
== ~%SKIE_BANTER%~ @232
== ~BA#MURN~ @233
== ~%SKIE_BANTER%~ @234
== ~BA#MURN~ @235
== ~%SKIE_BANTER%~ @236
== ~BA#MURN~ @237
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("TIAX")
See("TIAX")
!StateCheck("TIAX",CD_STATE_NOTVALID)
Global("A#MURN_TIAX","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("TIAX")~ THEN ~%TIAX_BANTER%~ Murn_TIAX
@238
DO ~SetGlobal("A#MURN_TIAX","LOCALS",1)~
== ~BA#MURN~ @239
== ~%TIAX_BANTER%~ @240
== ~BA#MURN~ @241
== ~%QUAYLE_BANTER%~ IF ~InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!Dead("Quayle")~ THEN @242
== ~%TIAX_BANTER%~ @243
== ~BA#MURN~ @244
== ~%TIAX_BANTER%~ @245
== ~BA#MURN~ @246
== ~%TIAX_BANTER%~ @247
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("VICONIA")
See("VICONIA")
!StateCheck("VICONIA",CD_STATE_NOTVALID)
Global("A#MURN_VICONIA","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("VICONIA")~ THEN ~BA#MURN~ MURN_VICONIA
@248
DO ~SetGlobal("A#MURN_VICONIA","LOCALS",1)~
== ~%KIVAN_BANTER%~ IF ~InParty("kivan")
See("kivan")
!StateCheck("kivan",CD_STATE_NOTVALID)
!Dead("kivan")~ THEN @249
== ~%VICONIA_BANTER%~ @250
== ~BA#MURN~ @251
== ~%VICONIA_BANTER%~ @252
== ~BA#MURN~ @253
== ~%VICONIA_BANTER%~ @254
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("XAN")
See("XAN")
!StateCheck("XAN",CD_STATE_NOTVALID)
Global("A#MURN_XAN","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("XAN")~ THEN ~%XAN_BANTER%~ A#MURN_XAN
@255
DO ~SetGlobal("A#MURN_XAN","LOCALS",1)~
== ~%XAN_BANTER%~ @256
== ~BA#MURN~ @257
== ~%XAN_BANTER%~ @258
== ~BA#MURN~ @259
== ~%XAN_BANTER%~ @260
== ~%XAN_BANTER%~ @261
== ~BA#MURN~ @262
== ~%QUAYLE_BANTER%~ IF ~InParty("quayle")
See("quayle")
!StateCheck("quayle",CD_STATE_NOTVALID)
!Dead("quayle")~ THEN @263
== ~%XAN_BANTER%~ @264
== ~BA#MURN~ @265
== ~%XAN_BANTER%~ @266
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("XZAR")
See("XZAR")
!StateCheck("XZAR",CD_STATE_NOTVALID)
Global("A#MURN_XZAR","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")!
Dead("XZAR")~ THEN ~%XZAR_BANTER%~ Murn_XZAR
@267
DO ~SetGlobal("A#MURN_XZAR","LOCALS",1)~
== ~BA#MURN~ @268
== ~%XZAR_BANTER%~ @269
== ~%MONTARON_BANTER%~ IF ~InParty("Montaron")
See("Montaron")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!Dead("Montaron")~ THEN @270
== ~BA#MURN~ @271
== ~%XZAR_BANTER%~ @272
== ~BA#MURN~ @273
== ~%XZAR_BANTER%~ @274
== ~BA#MURN~ @275
== ~%XZAR_BANTER%~ @276
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
InParty("YESLICK")
See("YESLICK")
!StateCheck("YESLICK",CD_STATE_NOTVALID)
Global("A#MURN_YESLICK","LOCALS",0)
InParty("A#MURN")
!StateCheck("A#MURN",CD_STATE_NOTVALID)
!Dead("A#MURN")
!Dead("YESLICK")~ THEN ~%YESLICK_BANTER%~ Murn_YESLICK
@277
DO ~SetGlobal("A#MURN_YESLICK","LOCALS",1)~
== ~BA#MURN~ @278
== ~%YESLICK_BANTER%~ @279
== ~BA#MURN~ @280
== ~%QUAYLE_BANTER%~ IF ~InParty("Quayle")
See("Quayle")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!Dead("Quayle")~ THEN @281
== ~%YESLICK_BANTER%~ @282
== ~BA#MURN~ @283
== ~%YESLICK_BANTER%~ @284
== ~BA#MURN~ @285
== ~%YESLICK_BANTER%~ @286
== ~BA#MURN~ @287
EXIT
