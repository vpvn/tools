{-# OPTIONS_GHC -w #-}
-- Haskell module header and import statements.

module Language.Ding.HappyParser (parse) where

import Language.Ding.Syntax
import Language.Ding.Syntax.Grammar (GrammarAnnotation)
import Language.Ding.Token
import Text.ShowEssential (showEssential)
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t28 t29 t30 t31 t33 t37
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 (Dict)
	| HappyAbsSyn5 (Header)
	| HappyAbsSyn6 ((String, String))
	| HappyAbsSyn8 (String)
	| HappyAbsSyn12 ([Line])
	| HappyAbsSyn13 (Line)
	| HappyAbsSyn15 ([Group])
	| HappyAbsSyn16 (Group)
	| HappyAbsSyn17 ([Unit])
	| HappyAbsSyn18 (Unit)
	| HappyAbsSyn19 (PartialUnit)
	| HappyAbsSyn20 (Token)
	| HappyAbsSyn22 ([Token])
	| HappyAbsSyn25 ([GrammarAnnotation])
	| HappyAbsSyn27 (GrammarAnnotation)
	| HappyAbsSyn28 t28
	| HappyAbsSyn29 t29
	| HappyAbsSyn30 t30
	| HappyAbsSyn31 t31
	| HappyAbsSyn33 t33
	| HappyAbsSyn34 (())
	| HappyAbsSyn37 t37

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,376) ([0,0,0,0,8,0,0,0,8192,0,0,43008,64682,4220,0,0,0,0,4,0,0,0,0,1,0,0,0,0,0,0,43688,31996,16,0,0,0,4,0,0,0,8192,0,0,0,0,0,0,0,0,320,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,43688,31996,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40960,64170,16883,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,32,0,0,0,0,4,0,0,0,1,0,0,43680,62450,65,0,0,16384,0,0,0,0,2,0,0,0,0,0,4,0,0,0,16384,0,0,0,0,0,0,0,65194,7999,4,0,0,0,0,0,0,0,0,0,0,32768,60138,1999,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,43008,65515,4220,0,0,43936,62463,65,0,32768,65195,1999,1,0,0,0,0,0,0,43688,31996,16,0,40960,62122,16883,0,0,43648,53194,263,0,0,10922,7999,4,0,43008,64682,4220,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,128,0,0,0,0,4,0,0,0,1,0,0,0,64,0,0,0,256,0,0,0,0,16384,0,0,0,0,0,16,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","dict","header","versionHeader","copyrightHeader","copyrightHolder","copyrightPeriod","licenseHeader","urlHeader","lines","line","realLine","groups","group","units","unit","partialUnit","partialUnit1","topText","topText1s","topText1","anyKW","gramAnnot","gramAnnot1s","gramAnnot1","conjAnnot","conjAnnot1","conjAnnot2s","conjAnnot2","anySep","topIgnoredSep","innerText","innerText1","slashText","slashText1","anyAnnot","ignoredAnnot","'{'","'}'","'('","')'","'['","']'","'</'","'/>'","'<'","'>'","'<>'","'::'","':'","'|'","';'","','","'~'","'#'","'//'","'/'","'</>'","'\\n'","'\\n>>'","slashSpecial","smiley","slashExp","slashExpPl","gramKW","versionPref","copyrightPref","licensePref","urlPref","url","text","%eof"]
        bit_start = st * 74
        bit_end = (st + 1) * 74
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..73]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (68) = happyShift action_4
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_6
action_0 (6) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (68) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (40) = happyShift action_20
action_2 (42) = happyShift action_21
action_2 (44) = happyShift action_22
action_2 (46) = happyShift action_23
action_2 (48) = happyShift action_24
action_2 (50) = happyShift action_25
action_2 (52) = happyShift action_26
action_2 (55) = happyShift action_27
action_2 (56) = happyShift action_28
action_2 (57) = happyShift action_29
action_2 (58) = happyShift action_30
action_2 (59) = happyShift action_31
action_2 (60) = happyShift action_32
action_2 (63) = happyShift action_33
action_2 (64) = happyShift action_34
action_2 (65) = happyShift action_35
action_2 (66) = happyShift action_36
action_2 (67) = happyShift action_37
action_2 (73) = happyShift action_38
action_2 (12) = happyGoto action_42
action_2 (13) = happyGoto action_8
action_2 (14) = happyGoto action_9
action_2 (15) = happyGoto action_10
action_2 (16) = happyGoto action_11
action_2 (17) = happyGoto action_12
action_2 (18) = happyGoto action_13
action_2 (19) = happyGoto action_14
action_2 (20) = happyGoto action_15
action_2 (23) = happyGoto action_16
action_2 (24) = happyGoto action_17
action_2 (33) = happyGoto action_18
action_2 (39) = happyGoto action_19
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (69) = happyShift action_41
action_3 (7) = happyGoto action_40
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (73) = happyShift action_39
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (74) = happyAccept
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (40) = happyShift action_20
action_6 (42) = happyShift action_21
action_6 (44) = happyShift action_22
action_6 (46) = happyShift action_23
action_6 (48) = happyShift action_24
action_6 (50) = happyShift action_25
action_6 (52) = happyShift action_26
action_6 (55) = happyShift action_27
action_6 (56) = happyShift action_28
action_6 (57) = happyShift action_29
action_6 (58) = happyShift action_30
action_6 (59) = happyShift action_31
action_6 (60) = happyShift action_32
action_6 (63) = happyShift action_33
action_6 (64) = happyShift action_34
action_6 (65) = happyShift action_35
action_6 (66) = happyShift action_36
action_6 (67) = happyShift action_37
action_6 (73) = happyShift action_38
action_6 (12) = happyGoto action_7
action_6 (13) = happyGoto action_8
action_6 (14) = happyGoto action_9
action_6 (15) = happyGoto action_10
action_6 (16) = happyGoto action_11
action_6 (17) = happyGoto action_12
action_6 (18) = happyGoto action_13
action_6 (19) = happyGoto action_14
action_6 (20) = happyGoto action_15
action_6 (23) = happyGoto action_16
action_6 (24) = happyGoto action_17
action_6 (33) = happyGoto action_18
action_6 (39) = happyGoto action_19
action_6 _ = happyReduce_21

action_7 (61) = happyShift action_66
action_7 _ = happyReduce_1

action_8 (62) = happyShift action_65
action_8 _ = happyReduce_11

action_9 _ = happyReduce_13

action_10 (51) = happyShift action_63
action_10 (53) = happyShift action_64
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_16

action_12 (54) = happyShift action_62
action_12 _ = happyReduce_17

action_13 _ = happyReduce_19

action_14 (40) = happyShift action_20
action_14 (42) = happyShift action_21
action_14 (44) = happyShift action_22
action_14 (46) = happyShift action_23
action_14 (48) = happyShift action_24
action_14 (50) = happyShift action_25
action_14 (52) = happyShift action_26
action_14 (55) = happyShift action_27
action_14 (56) = happyShift action_28
action_14 (57) = happyShift action_29
action_14 (58) = happyShift action_30
action_14 (59) = happyShift action_31
action_14 (60) = happyShift action_32
action_14 (63) = happyShift action_33
action_14 (64) = happyShift action_34
action_14 (65) = happyShift action_35
action_14 (66) = happyShift action_36
action_14 (67) = happyShift action_37
action_14 (73) = happyShift action_38
action_14 (20) = happyGoto action_61
action_14 (23) = happyGoto action_16
action_14 (24) = happyGoto action_17
action_14 (33) = happyGoto action_18
action_14 (39) = happyGoto action_19
action_14 _ = happyReduce_20

action_15 _ = happyReduce_23

action_16 _ = happyReduce_24

action_17 _ = happyReduce_29

action_18 _ = happyReduce_30

action_19 _ = happyReduce_31

action_20 (34) = happyGoto action_60
action_20 _ = happyReduce_64

action_21 (34) = happyGoto action_59
action_21 _ = happyReduce_64

action_22 (34) = happyGoto action_58
action_22 _ = happyReduce_64

action_23 (40) = happyShift action_20
action_23 (42) = happyShift action_21
action_23 (44) = happyShift action_22
action_23 (46) = happyShift action_23
action_23 (48) = happyShift action_24
action_23 (50) = happyShift action_25
action_23 (52) = happyShift action_26
action_23 (54) = happyShift action_56
action_23 (55) = happyShift action_27
action_23 (56) = happyShift action_28
action_23 (57) = happyShift action_29
action_23 (58) = happyShift action_30
action_23 (59) = happyShift action_31
action_23 (60) = happyShift action_32
action_23 (63) = happyShift action_33
action_23 (64) = happyShift action_34
action_23 (65) = happyShift action_35
action_23 (66) = happyShift action_36
action_23 (67) = happyShift action_37
action_23 (73) = happyShift action_57
action_23 (24) = happyGoto action_50
action_23 (33) = happyGoto action_51
action_23 (36) = happyGoto action_52
action_23 (37) = happyGoto action_53
action_23 (38) = happyGoto action_54
action_23 (39) = happyGoto action_55
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (34) = happyGoto action_49
action_24 _ = happyReduce_64

action_25 _ = happyReduce_55

action_26 _ = happyReduce_56

action_27 _ = happyReduce_57

action_28 _ = happyReduce_58

action_29 _ = happyReduce_62

action_30 _ = happyReduce_59

action_31 _ = happyReduce_60

action_32 _ = happyReduce_61

action_33 _ = happyReduce_82

action_34 _ = happyReduce_83

action_35 _ = happyReduce_84

action_36 _ = happyReduce_85

action_37 _ = happyReduce_32

action_38 _ = happyReduce_28

action_39 (61) = happyShift action_48
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (70) = happyShift action_47
action_40 (10) = happyGoto action_46
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (73) = happyShift action_45
action_41 (8) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (61) = happyShift action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (40) = happyShift action_20
action_43 (42) = happyShift action_21
action_43 (44) = happyShift action_22
action_43 (46) = happyShift action_23
action_43 (48) = happyShift action_24
action_43 (50) = happyShift action_25
action_43 (52) = happyShift action_26
action_43 (55) = happyShift action_27
action_43 (56) = happyShift action_28
action_43 (57) = happyShift action_29
action_43 (58) = happyShift action_30
action_43 (59) = happyShift action_31
action_43 (60) = happyShift action_32
action_43 (63) = happyShift action_33
action_43 (64) = happyShift action_34
action_43 (65) = happyShift action_35
action_43 (66) = happyShift action_36
action_43 (67) = happyShift action_37
action_43 (73) = happyShift action_38
action_43 (13) = happyGoto action_67
action_43 (14) = happyGoto action_9
action_43 (15) = happyGoto action_10
action_43 (16) = happyGoto action_11
action_43 (17) = happyGoto action_12
action_43 (18) = happyGoto action_13
action_43 (19) = happyGoto action_14
action_43 (20) = happyGoto action_15
action_43 (23) = happyGoto action_16
action_43 (24) = happyGoto action_17
action_43 (33) = happyGoto action_18
action_43 (39) = happyGoto action_19
action_43 _ = happyReduce_21

action_44 (55) = happyShift action_98
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (48) = happyShift action_97
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (71) = happyShift action_96
action_46 (11) = happyGoto action_95
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (73) = happyShift action_94
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_4

action_49 (40) = happyShift action_20
action_49 (42) = happyShift action_21
action_49 (44) = happyShift action_22
action_49 (46) = happyShift action_23
action_49 (48) = happyShift action_24
action_49 (49) = happyShift action_93
action_49 (50) = happyShift action_77
action_49 (51) = happyShift action_78
action_49 (52) = happyShift action_79
action_49 (53) = happyShift action_80
action_49 (54) = happyShift action_81
action_49 (55) = happyShift action_82
action_49 (56) = happyShift action_83
action_49 (57) = happyShift action_84
action_49 (58) = happyShift action_85
action_49 (59) = happyShift action_86
action_49 (60) = happyShift action_87
action_49 (63) = happyShift action_33
action_49 (64) = happyShift action_34
action_49 (65) = happyShift action_35
action_49 (66) = happyShift action_36
action_49 (67) = happyShift action_37
action_49 (73) = happyShift action_88
action_49 (24) = happyGoto action_72
action_49 (32) = happyGoto action_73
action_49 (35) = happyGoto action_74
action_49 (38) = happyGoto action_75
action_49 (39) = happyGoto action_55
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_72

action_51 _ = happyReduce_73

action_52 (40) = happyShift action_20
action_52 (42) = happyShift action_21
action_52 (44) = happyShift action_22
action_52 (46) = happyShift action_23
action_52 (47) = happyShift action_92
action_52 (48) = happyShift action_24
action_52 (50) = happyShift action_25
action_52 (52) = happyShift action_26
action_52 (54) = happyShift action_56
action_52 (55) = happyShift action_27
action_52 (56) = happyShift action_28
action_52 (57) = happyShift action_29
action_52 (58) = happyShift action_30
action_52 (59) = happyShift action_31
action_52 (60) = happyShift action_32
action_52 (63) = happyShift action_33
action_52 (64) = happyShift action_34
action_52 (65) = happyShift action_35
action_52 (66) = happyShift action_36
action_52 (67) = happyShift action_37
action_52 (73) = happyShift action_57
action_52 (24) = happyGoto action_50
action_52 (33) = happyGoto action_51
action_52 (37) = happyGoto action_91
action_52 (38) = happyGoto action_54
action_52 (39) = happyGoto action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_70

action_54 _ = happyReduce_75

action_55 _ = happyReduce_76

action_56 _ = happyReduce_74

action_57 _ = happyReduce_71

action_58 (40) = happyShift action_20
action_58 (42) = happyShift action_21
action_58 (44) = happyShift action_22
action_58 (45) = happyShift action_90
action_58 (46) = happyShift action_23
action_58 (48) = happyShift action_24
action_58 (50) = happyShift action_77
action_58 (51) = happyShift action_78
action_58 (52) = happyShift action_79
action_58 (53) = happyShift action_80
action_58 (54) = happyShift action_81
action_58 (55) = happyShift action_82
action_58 (56) = happyShift action_83
action_58 (57) = happyShift action_84
action_58 (58) = happyShift action_85
action_58 (59) = happyShift action_86
action_58 (60) = happyShift action_87
action_58 (63) = happyShift action_33
action_58 (64) = happyShift action_34
action_58 (65) = happyShift action_35
action_58 (66) = happyShift action_36
action_58 (67) = happyShift action_37
action_58 (73) = happyShift action_88
action_58 (24) = happyGoto action_72
action_58 (32) = happyGoto action_73
action_58 (35) = happyGoto action_74
action_58 (38) = happyGoto action_75
action_58 (39) = happyGoto action_55
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (40) = happyShift action_20
action_59 (42) = happyShift action_21
action_59 (43) = happyShift action_89
action_59 (44) = happyShift action_22
action_59 (46) = happyShift action_23
action_59 (48) = happyShift action_24
action_59 (50) = happyShift action_77
action_59 (51) = happyShift action_78
action_59 (52) = happyShift action_79
action_59 (53) = happyShift action_80
action_59 (54) = happyShift action_81
action_59 (55) = happyShift action_82
action_59 (56) = happyShift action_83
action_59 (57) = happyShift action_84
action_59 (58) = happyShift action_85
action_59 (59) = happyShift action_86
action_59 (60) = happyShift action_87
action_59 (63) = happyShift action_33
action_59 (64) = happyShift action_34
action_59 (65) = happyShift action_35
action_59 (66) = happyShift action_36
action_59 (67) = happyShift action_37
action_59 (73) = happyShift action_88
action_59 (24) = happyGoto action_72
action_59 (32) = happyGoto action_73
action_59 (35) = happyGoto action_74
action_59 (38) = happyGoto action_75
action_59 (39) = happyGoto action_55
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (40) = happyShift action_20
action_60 (41) = happyShift action_76
action_60 (42) = happyShift action_21
action_60 (44) = happyShift action_22
action_60 (46) = happyShift action_23
action_60 (48) = happyShift action_24
action_60 (50) = happyShift action_77
action_60 (51) = happyShift action_78
action_60 (52) = happyShift action_79
action_60 (53) = happyShift action_80
action_60 (54) = happyShift action_81
action_60 (55) = happyShift action_82
action_60 (56) = happyShift action_83
action_60 (57) = happyShift action_84
action_60 (58) = happyShift action_85
action_60 (59) = happyShift action_86
action_60 (60) = happyShift action_87
action_60 (63) = happyShift action_33
action_60 (64) = happyShift action_34
action_60 (65) = happyShift action_35
action_60 (66) = happyShift action_36
action_60 (67) = happyShift action_37
action_60 (73) = happyShift action_88
action_60 (24) = happyGoto action_72
action_60 (32) = happyGoto action_73
action_60 (35) = happyGoto action_74
action_60 (38) = happyGoto action_75
action_60 (39) = happyGoto action_55
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_22

action_62 (40) = happyShift action_20
action_62 (42) = happyShift action_21
action_62 (44) = happyShift action_22
action_62 (46) = happyShift action_23
action_62 (48) = happyShift action_24
action_62 (50) = happyShift action_25
action_62 (52) = happyShift action_26
action_62 (55) = happyShift action_27
action_62 (56) = happyShift action_28
action_62 (57) = happyShift action_29
action_62 (58) = happyShift action_30
action_62 (59) = happyShift action_31
action_62 (60) = happyShift action_32
action_62 (63) = happyShift action_33
action_62 (64) = happyShift action_34
action_62 (65) = happyShift action_35
action_62 (66) = happyShift action_36
action_62 (67) = happyShift action_37
action_62 (73) = happyShift action_38
action_62 (18) = happyGoto action_71
action_62 (19) = happyGoto action_14
action_62 (20) = happyGoto action_15
action_62 (23) = happyGoto action_16
action_62 (24) = happyGoto action_17
action_62 (33) = happyGoto action_18
action_62 (39) = happyGoto action_19
action_62 _ = happyReduce_21

action_63 (40) = happyShift action_20
action_63 (42) = happyShift action_21
action_63 (44) = happyShift action_22
action_63 (46) = happyShift action_23
action_63 (48) = happyShift action_24
action_63 (50) = happyShift action_25
action_63 (52) = happyShift action_26
action_63 (55) = happyShift action_27
action_63 (56) = happyShift action_28
action_63 (57) = happyShift action_29
action_63 (58) = happyShift action_30
action_63 (59) = happyShift action_31
action_63 (60) = happyShift action_32
action_63 (63) = happyShift action_33
action_63 (64) = happyShift action_34
action_63 (65) = happyShift action_35
action_63 (66) = happyShift action_36
action_63 (67) = happyShift action_37
action_63 (73) = happyShift action_38
action_63 (15) = happyGoto action_70
action_63 (16) = happyGoto action_11
action_63 (17) = happyGoto action_12
action_63 (18) = happyGoto action_13
action_63 (19) = happyGoto action_14
action_63 (20) = happyGoto action_15
action_63 (23) = happyGoto action_16
action_63 (24) = happyGoto action_17
action_63 (33) = happyGoto action_18
action_63 (39) = happyGoto action_19
action_63 _ = happyReduce_21

action_64 (40) = happyShift action_20
action_64 (42) = happyShift action_21
action_64 (44) = happyShift action_22
action_64 (46) = happyShift action_23
action_64 (48) = happyShift action_24
action_64 (50) = happyShift action_25
action_64 (52) = happyShift action_26
action_64 (55) = happyShift action_27
action_64 (56) = happyShift action_28
action_64 (57) = happyShift action_29
action_64 (58) = happyShift action_30
action_64 (59) = happyShift action_31
action_64 (60) = happyShift action_32
action_64 (63) = happyShift action_33
action_64 (64) = happyShift action_34
action_64 (65) = happyShift action_35
action_64 (66) = happyShift action_36
action_64 (67) = happyShift action_37
action_64 (73) = happyShift action_38
action_64 (16) = happyGoto action_69
action_64 (17) = happyGoto action_12
action_64 (18) = happyGoto action_13
action_64 (19) = happyGoto action_14
action_64 (20) = happyGoto action_15
action_64 (23) = happyGoto action_16
action_64 (24) = happyGoto action_17
action_64 (33) = happyGoto action_18
action_64 (39) = happyGoto action_19
action_64 _ = happyReduce_21

action_65 (40) = happyShift action_20
action_65 (42) = happyShift action_21
action_65 (44) = happyShift action_22
action_65 (46) = happyShift action_23
action_65 (48) = happyShift action_24
action_65 (50) = happyShift action_25
action_65 (52) = happyShift action_26
action_65 (55) = happyShift action_27
action_65 (56) = happyShift action_28
action_65 (57) = happyShift action_29
action_65 (58) = happyShift action_30
action_65 (59) = happyShift action_31
action_65 (60) = happyShift action_32
action_65 (63) = happyShift action_33
action_65 (64) = happyShift action_34
action_65 (65) = happyShift action_35
action_65 (66) = happyShift action_36
action_65 (67) = happyShift action_37
action_65 (73) = happyShift action_38
action_65 (14) = happyGoto action_68
action_65 (15) = happyGoto action_10
action_65 (16) = happyGoto action_11
action_65 (17) = happyGoto action_12
action_65 (18) = happyGoto action_13
action_65 (19) = happyGoto action_14
action_65 (20) = happyGoto action_15
action_65 (23) = happyGoto action_16
action_65 (24) = happyGoto action_17
action_65 (33) = happyGoto action_18
action_65 (39) = happyGoto action_19
action_65 _ = happyReduce_21

action_66 (40) = happyShift action_20
action_66 (42) = happyShift action_21
action_66 (44) = happyShift action_22
action_66 (46) = happyShift action_23
action_66 (48) = happyShift action_24
action_66 (50) = happyShift action_25
action_66 (52) = happyShift action_26
action_66 (55) = happyShift action_27
action_66 (56) = happyShift action_28
action_66 (57) = happyShift action_29
action_66 (58) = happyShift action_30
action_66 (59) = happyShift action_31
action_66 (60) = happyShift action_32
action_66 (63) = happyShift action_33
action_66 (64) = happyShift action_34
action_66 (65) = happyShift action_35
action_66 (66) = happyShift action_36
action_66 (67) = happyShift action_37
action_66 (73) = happyShift action_38
action_66 (74) = happyReduce_2
action_66 (13) = happyGoto action_67
action_66 (14) = happyGoto action_9
action_66 (15) = happyGoto action_10
action_66 (16) = happyGoto action_11
action_66 (17) = happyGoto action_12
action_66 (18) = happyGoto action_13
action_66 (19) = happyGoto action_14
action_66 (20) = happyGoto action_15
action_66 (23) = happyGoto action_16
action_66 (24) = happyGoto action_17
action_66 (33) = happyGoto action_18
action_66 (39) = happyGoto action_19
action_66 _ = happyReduce_21

action_67 (62) = happyShift action_65
action_67 _ = happyReduce_10

action_68 _ = happyReduce_12

action_69 _ = happyReduce_15

action_70 (53) = happyShift action_64
action_70 _ = happyReduce_14

action_71 _ = happyReduce_18

action_72 _ = happyReduce_66

action_73 _ = happyReduce_67

action_74 _ = happyReduce_63

action_75 _ = happyReduce_68

action_76 _ = happyReduce_77

action_77 _ = happyReduce_44

action_78 _ = happyReduce_45

action_79 _ = happyReduce_46

action_80 _ = happyReduce_47

action_81 _ = happyReduce_48

action_82 _ = happyReduce_49

action_83 _ = happyReduce_50

action_84 _ = happyReduce_54

action_85 _ = happyReduce_51

action_86 _ = happyReduce_52

action_87 _ = happyReduce_53

action_88 _ = happyReduce_65

action_89 _ = happyReduce_78

action_90 _ = happyReduce_79

action_91 _ = happyReduce_69

action_92 _ = happyReduce_81

action_93 _ = happyReduce_80

action_94 (54) = happyShift action_102
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_3

action_96 (72) = happyShift action_101
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (73) = happyShift action_100
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (61) = happyShift action_99
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (57) = happyShift action_106
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (49) = happyShift action_105
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (61) = happyShift action_104
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (73) = happyShift action_103
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (61) = happyShift action_109
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_9

action_105 _ = happyReduce_6

action_106 (73) = happyShift action_108
action_106 (9) = happyGoto action_107
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (61) = happyShift action_110
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_7

action_109 _ = happyReduce_8

action_110 _ = happyReduce_5

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Dict happy_var_1 $ reverse happy_var_2
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 _
	(HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Dict happy_var_1 $ reverse happy_var_2
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 4 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	(HappyAbsSyn6  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Header { version = fst happy_var_1
                                                 , versionDate = snd happy_var_1
                                                 , copyrightHolder = fst happy_var_2
                                                 , copyrightPeriod = snd happy_var_2
                                                 , license = happy_var_3
                                                 , url = happy_var_4
                                                 }
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  6 happyReduction_4
happyReduction_4 _
	(HappyTerminal happy_var_2)
	_
	 =  HappyAbsSyn6
		 (let [version, date] = words $
                                                showEssential happy_var_2
                                          in  (version, date)
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 7 7 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 ((happy_var_2, happy_var_6)
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 4 8 happyReduction_6
happyReduction_6 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (showEssential happy_var_1
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  9 happyReduction_7
happyReduction_7 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (showEssential happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 5 10 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyTerminal happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (showEssential $
                                                   happy_var_2 <> happy_var_3 <> happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  11 happyReduction_9
happyReduction_9 _
	(HappyTerminal happy_var_2)
	_
	 =  HappyAbsSyn8
		 (showEssential happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  12 happyReduction_10
happyReduction_10 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_3 : happy_var_1
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  12 happyReduction_11
happyReduction_11 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 : []
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  13 happyReduction_12
happyReduction_12 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 <> happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  13 happyReduction_13
happyReduction_13 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  14 happyReduction_14
happyReduction_14 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn13
		 (Line $ reverse $ zipWith Entry happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  15 happyReduction_15
happyReduction_15 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_3 : happy_var_1
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  15 happyReduction_16
happyReduction_16 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1 : []
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  16 happyReduction_17
happyReduction_17 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn16
		 (Group $ reverse happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  17 happyReduction_18
happyReduction_18 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_3 : happy_var_1
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  17 happyReduction_19
happyReduction_19 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1 : []
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  18 happyReduction_20
happyReduction_20 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn18
		 (toUnit happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_0  18 happyReduction_21
happyReduction_21  =  HappyAbsSyn18
		 (NullUnit
	)

happyReduce_22 = happySpecReduce_2  19 happyReduction_22
happyReduction_22 (HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1 `plusToken` happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  19 happyReduction_23
happyReduction_23 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn19
		 (fromToken happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  20 happyReduction_24
happyReduction_24 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  21 happyReduction_25
happyReduction_25 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 (mconcat $ reverse happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  22 happyReduction_26
happyReduction_26 (HappyAbsSyn20  happy_var_2)
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_2 : happy_var_1
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  22 happyReduction_27
happyReduction_27 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_1 : []
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  23 happyReduction_28
happyReduction_28 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  23 happyReduction_29
happyReduction_29 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  23 happyReduction_30
happyReduction_30 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  23 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn20
		 (mempty
	)

happyReduce_32 = happySpecReduce_1  24 happyReduction_32
happyReduction_32 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  25 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn25  happy_var_2)
	_
	 =  HappyAbsSyn25
		 (reverse happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  26 happyReduction_34
happyReduction_34 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_3 : happy_var_1
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  26 happyReduction_35
happyReduction_35 (HappyAbsSyn27  happy_var_3)
	_
	(HappyAbsSyn25  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_3 : happy_var_1
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  26 happyReduction_36
happyReduction_36 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn25
		 (happy_var_1 : []
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  27 happyReduction_37
happyReduction_37 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn27
		 (tokenToGramAnnot happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 28 happyReduction_38
happyReduction_38 ((HappyTerminal happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn28
		 ((happy_var_3, happy_var_5)
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_1  29 happyReduction_39
happyReduction_39 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (reverse happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  30 happyReduction_40
happyReduction_40 (HappyAbsSyn31  happy_var_3)
	_
	(HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_3 : happy_var_1
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  30 happyReduction_41
happyReduction_41 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (happy_var_1 : []
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  31 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (happy_var_1
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  31 happyReduction_43
happyReduction_43 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn31
		 (showEssential happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  32 happyReduction_44
happyReduction_44 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  32 happyReduction_45
happyReduction_45 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  32 happyReduction_46
happyReduction_46 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  32 happyReduction_47
happyReduction_47 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  32 happyReduction_48
happyReduction_48 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  32 happyReduction_49
happyReduction_49 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  32 happyReduction_50
happyReduction_50 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  32 happyReduction_51
happyReduction_51 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  32 happyReduction_52
happyReduction_52 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  32 happyReduction_53
happyReduction_53 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  32 happyReduction_54
happyReduction_54 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn20
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  33 happyReduction_55
happyReduction_55 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  33 happyReduction_56
happyReduction_56 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  33 happyReduction_57
happyReduction_57 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  33 happyReduction_58
happyReduction_58 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  33 happyReduction_59
happyReduction_59 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  33 happyReduction_60
happyReduction_60 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  33 happyReduction_61
happyReduction_61 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  33 happyReduction_62
happyReduction_62 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn33
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  34 happyReduction_63
happyReduction_63 _
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_64 = happySpecReduce_0  34 happyReduction_64
happyReduction_64  =  HappyAbsSyn34
		 (()
	)

happyReduce_65 = happySpecReduce_1  35 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_66 = happySpecReduce_1  35 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_67 = happySpecReduce_1  35 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_68 = happySpecReduce_1  35 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_69 = happySpecReduce_2  36 happyReduction_69
happyReduction_69 _
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_70 = happySpecReduce_1  36 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_71 = happySpecReduce_1  37 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn37
		 (()
	)

happyReduce_72 = happySpecReduce_1  37 happyReduction_72
happyReduction_72 _
	 =  HappyAbsSyn37
		 (()
	)

happyReduce_73 = happySpecReduce_1  37 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn37
		 (()
	)

happyReduce_74 = happySpecReduce_1  37 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn37
		 (()
	)

happyReduce_75 = happySpecReduce_1  37 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn37
		 (()
	)

happyReduce_76 = happySpecReduce_1  38 happyReduction_76
happyReduction_76 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_77 = happySpecReduce_3  39 happyReduction_77
happyReduction_77 _
	_
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_78 = happySpecReduce_3  39 happyReduction_78
happyReduction_78 _
	_
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_79 = happySpecReduce_3  39 happyReduction_79
happyReduction_79 _
	_
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_80 = happySpecReduce_3  39 happyReduction_80
happyReduction_80 _
	_
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_81 = happySpecReduce_3  39 happyReduction_81
happyReduction_81 _
	_
	_
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_82 = happySpecReduce_1  39 happyReduction_82
happyReduction_82 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_83 = happySpecReduce_1  39 happyReduction_83
happyReduction_83 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_84 = happySpecReduce_1  39 happyReduction_84
happyReduction_84 _
	 =  HappyAbsSyn34
		 (()
	)

happyReduce_85 = happySpecReduce_1  39 happyReduction_85
happyReduction_85 _
	 =  HappyAbsSyn34
		 (()
	)

happyNewToken action sts stk [] =
	action 74 74 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Token _ _ (Separator "{") -> cont 40;
	Token _ _ (Separator "}") -> cont 41;
	Token _ _ (Separator "(") -> cont 42;
	Token _ _ (Separator ")") -> cont 43;
	Token _ _ (Separator "[") -> cont 44;
	Token _ _ (Separator "]") -> cont 45;
	Token _ _ OSlash -> cont 46;
	Token _ _ CSlash -> cont 47;
	Token _ _ (Separator "<") -> cont 48;
	Token _ _ (Separator ">") -> cont 49;
	Token _ _ (Separator "<>") -> cont 50;
	Token _ _ (Separator "::") -> cont 51;
	Token _ _ (Separator ":") -> cont 52;
	Token _ _ (Separator "|") -> cont 53;
	Token _ _ (Separator ";") -> cont 54;
	Token _ _ (Separator ",") -> cont 55;
	Token _ _ (Separator "~") -> cont 56;
	Token _ _ (Separator "#") -> cont 57;
	Token _ _ (Separator "//") -> cont 58;
	Token _ _ StrongSlash -> cont 59;
	Token _ _ WeakSlash -> cont 60;
	Token _ _ NL -> cont 61;
	Token _ _ LineCont -> cont 62;
	Token _ _ (SlashSpecial _) -> cont 63;
	Token _ _ (Smiley _) -> cont 64;
	Token _ _ (SlashExp _) -> cont 65;
	Token _ _ (SlashExpPlural _) -> cont 66;
	Token _ _ (Keyword (GramKW _)) -> cont 67;
	Token _ _ (HeaderPrefix VersionPref) -> cont 68;
	Token _ _ (HeaderPrefix CopyrightPref) -> cont 69;
	Token _ _ (HeaderPrefix LicensePref) -> cont 70;
	Token _ _ (HeaderPrefix URLPref) -> cont 71;
	Token _ _ (URL _) -> cont 72;
	Token _ _ (Text _) -> cont 73;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 74 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Parse error at end of input"
parseError ((Token _ (Position line col) _):_) =
  error $ "Parse error at line " ++ show line ++ ", column " ++ show col ++ "."

data PartialUnit = PartialUnit [Token] [[GrammarAnnotation]]

fromToken :: Token -> PartialUnit
fromToken t = PartialUnit [t] []

plusToken :: PartialUnit -> Token -> PartialUnit
plusToken (PartialUnit ts _) t = PartialUnit (t:ts) []

plusAnnot :: PartialUnit -> [GrammarAnnotation] -> PartialUnit
plusAnnot (PartialUnit ts ass) as = PartialUnit ts (as : ass)

toUnit :: PartialUnit -> Unit
toUnit (PartialUnit ts ass) =
  Unit (showEssential $ mconcat $ reverse ts) (concat $ reverse ass)

tokenToGramAnnot :: Token -> GrammarAnnotation
tokenToGramAnnot (Token _ _ (Keyword (GramKW gram))) = gram
tokenToGramAnnot _                                   =
  error "Language.Ding.HappyParser: Not a grammar annotation."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc6056_0/ghc_2.h" #-}




















































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
