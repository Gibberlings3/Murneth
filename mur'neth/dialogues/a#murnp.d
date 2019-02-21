BEGIN ~A#MURNP~

IF ~Global("A#MurnJoined","GLOBAL",1)~ THEN BEGIN MurnKickOut
SAY @0
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @2 DO ~SetGlobal("A#MurnJoined","GLOBAL",0)~ EXIT
IF ~~ THEN REPLY @3 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @4 DO ~SetGlobal("A#MurnJoined","GLOBAL",0)~ EXIT
END

IF ~Global("A#MurnJoined","GLOBAL",0)~ THEN BEGIN MurnRejoin
SAY @5
IF ~~ THEN REPLY @6 DO ~SetGlobal("A#MurnJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @7 EXIT
END
