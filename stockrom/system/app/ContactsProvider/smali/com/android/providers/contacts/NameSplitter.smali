.class public Lcom/android/providers/contacts/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/NameSplitter$NameTokenizer;,
        Lcom/android/providers/contacts/NameSplitter$Name;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;


# instance fields
.field private final mConjuctions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mLastNamePrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSuffixLength:I

.field private final mPrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuffixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 51
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 54
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 68
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\uac15\uc804"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\ub0a8\uad81"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\ub3c5\uace0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\ub3d9\ubc29"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\ub9dd\uc808"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uc0ac\uacf5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uc11c\ubb38"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uc120\uc6b0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uc18c\ubd09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uc5b4\uae08"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uc7a5\uace1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uc81c\uac08"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud669\ubcf4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .parameter "commonPrefixes"
    .parameter "commonLastNamePrefixes"
    .parameter "commonSuffixes"
    .parameter "commonConjunctions"
    .parameter "locale"

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-static {p1}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    .line 287
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    .line 288
    invoke-static {p3}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    .line 289
    invoke-static {p4}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    .line 290
    if-eqz p5, :cond_1

    .end local p5
    :goto_0
    iput-object p5, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    .line 291
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, maxLength:I
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 290
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxLength:I
    .end local v2           #suffix:Ljava/lang/String;
    .restart local p5
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p5

    goto :goto_0

    .line 300
    .end local p5
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #maxLength:I
    :cond_2
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    .line 301
    return-void
.end method

.method private static convertToSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 309
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 310
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, split:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 312
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0           #i:I
    .end local v2           #split:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .parameter "name"
    .parameter "offset"

    .prologue
    .line 1018
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1019
    .local v1, length:I
    :goto_0
    if-ge p2, v1, :cond_2

    .line 1020
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1021
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1022
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 1023
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1024
    const/4 v3, 0x4

    .line 1033
    .end local v0           #codePoint:I
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 1026
    .restart local v0       #codePoint:I
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1027
    const/4 v3, 0x5

    goto :goto_1

    .line 1030
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 1031
    goto :goto_0

    .line 1033
    .end local v0           #codePoint:I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method private guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 929
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    if-eqz v2, :cond_0

    .line 979
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 936
    .local v0, bestGuess:I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 938
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 942
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 943
    .local v1, guess:I
    if-eqz v1, :cond_3

    .line 944
    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    .line 945
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 948
    :cond_2
    move v0, v1

    .line 951
    :cond_3
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 952
    if-eqz v1, :cond_5

    .line 953
    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    .line 954
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 957
    :cond_4
    move v0, v1

    .line 960
    :cond_5
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 961
    if-eqz v1, :cond_7

    .line 962
    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_6

    .line 963
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 966
    :cond_6
    move v0, v1

    .line 969
    :cond_7
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 970
    if-eqz v1, :cond_9

    .line 971
    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_8

    .line 972
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 975
    :cond_8
    move v0, v1

    .line 978
    :cond_9
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0
.end method

.method private guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x2

    .line 1037
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    if-eqz v2, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 1042
    .local v0, bestGuess:I
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 1043
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1048
    .local v1, guess:I
    if-eqz v1, :cond_4

    .line 1049
    if-eq v1, v3, :cond_3

    .line 1050
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1053
    :cond_3
    move v0, v1

    .line 1056
    :cond_4
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1057
    if-eqz v1, :cond_0

    .line 1058
    if-eq v1, v3, :cond_5

    .line 1059
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1062
    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "block"

    .prologue
    .line 1103
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFamilyNamePrefix(Ljava/lang/String;)Z
    .locals 4
    .parameter "word"

    .prologue
    .line 843
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, normalized:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 1121
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 1115
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 1095
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 9
    .parameter "prefix"
    .parameter "part1"
    .parameter "part2"
    .parameter "part3"
    .parameter "suffix"
    .parameter "useSpace"
    .parameter "useCommaAfterPart1"
    .parameter "useCommaAfterPart3"

    .prologue
    .line 564
    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 565
    :goto_0
    if-nez p2, :cond_6

    const/4 p2, 0x0

    .line 566
    :goto_1
    if-nez p3, :cond_7

    const/4 p3, 0x0

    .line 567
    :goto_2
    if-nez p4, :cond_8

    const/4 p4, 0x0

    .line 568
    :goto_3
    if-nez p5, :cond_9

    const/4 p5, 0x0

    .line 570
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v3, 0x1

    .line 571
    .local v3, hasPrefix:Z
    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v0, 0x1

    .line 572
    .local v0, hasPart1:Z
    :goto_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v1, 0x1

    .line 573
    .local v1, hasPart2:Z
    :goto_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v2, 0x1

    .line 574
    .local v2, hasPart3:Z
    :goto_8
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v4, 0x1

    .line 576
    .local v4, hasSuffix:Z
    :goto_9
    const/4 v5, 0x1

    .line 577
    .local v5, isSingleWord:Z
    const/4 v7, 0x0

    .line 579
    .local v7, singleWord:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 580
    move-object v7, p1

    .line 583
    :cond_0
    if-eqz v0, :cond_1

    .line 584
    if-eqz v7, :cond_f

    .line 585
    const/4 v5, 0x0

    .line 591
    :cond_1
    :goto_a
    if-eqz v1, :cond_2

    .line 592
    if-eqz v7, :cond_10

    .line 593
    const/4 v5, 0x0

    .line 599
    :cond_2
    :goto_b
    if-eqz v2, :cond_3

    .line 600
    if-eqz v7, :cond_11

    .line 601
    const/4 v5, 0x0

    .line 607
    :cond_3
    :goto_c
    if-eqz v4, :cond_4

    .line 608
    if-eqz v7, :cond_12

    .line 609
    const/4 v5, 0x0

    .line 615
    :cond_4
    :goto_d
    if-eqz v5, :cond_13

    .line 665
    .end local v7           #singleWord:Ljava/lang/String;
    :goto_e
    return-object v7

    .line 564
    .end local v0           #hasPart1:Z
    .end local v1           #hasPart2:Z
    .end local v2           #hasPart3:Z
    .end local v3           #hasPrefix:Z
    .end local v4           #hasSuffix:Z
    .end local v5           #isSingleWord:Z
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 565
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 566
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 567
    :cond_8
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 568
    :cond_9
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    goto :goto_4

    .line 570
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 571
    .restart local v3       #hasPrefix:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 572
    .restart local v0       #hasPart1:Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 573
    .restart local v1       #hasPart2:Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    .line 574
    .restart local v2       #hasPart3:Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_9

    .line 587
    .restart local v4       #hasSuffix:Z
    .restart local v5       #isSingleWord:Z
    .restart local v7       #singleWord:Ljava/lang/String;
    :cond_f
    move-object v7, p2

    goto :goto_a

    .line 595
    :cond_10
    move-object v7, p3

    goto :goto_b

    .line 603
    :cond_11
    move-object v7, p4

    goto :goto_c

    .line 611
    :cond_12
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    .line 619
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v6, sb:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_14

    .line 622
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_14
    if-eqz v0, :cond_16

    .line 626
    if-eqz v3, :cond_15

    .line 627
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    :cond_15
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :cond_16
    if-eqz v1, :cond_1a

    .line 633
    if-nez v3, :cond_17

    if-eqz v0, :cond_19

    .line 634
    :cond_17
    if-eqz p7, :cond_18

    .line 635
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :cond_18
    if-eqz p6, :cond_19

    .line 638
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 641
    :cond_19
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_1a
    if-eqz v2, :cond_1d

    .line 645
    if-nez v3, :cond_1b

    if-nez v0, :cond_1b

    if-eqz v1, :cond_1c

    .line 646
    :cond_1b
    if-eqz p6, :cond_1c

    .line 647
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    :cond_1c
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_1d
    if-eqz v4, :cond_21

    .line 654
    if-nez v3, :cond_1e

    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    if-eqz v2, :cond_20

    .line 655
    :cond_1e
    if-eqz p8, :cond_1f

    .line 656
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :cond_1f
    if-eqz p6, :cond_20

    .line 659
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    :cond_20
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_e
.end method

.method private normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "suffix"

    .prologue
    const/16 v3, 0x2e

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 674
    .local v0, length:I
    if-eqz v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 682
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 678
    .restart local p1
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, withDot:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    .line 680
    goto :goto_0
.end method

.method private parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 4
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 869
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 888
    :goto_0
    return-void

    .line 873
    :cond_0
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 874
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 876
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v1, sb:Ljava/lang/StringBuilder;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    .local v0, i:I
    :goto_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 878
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 879
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 883
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 886
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 5
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/16 v4, 0x2e

    .line 796
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 803
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 810
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ge v2, v3, :cond_4

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 813
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v0, v2, v3

    .line 814
    .local v0, familyNamePrefix:Ljava/lang/String;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 818
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$012(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 823
    .end local v0           #familyNamePrefix:Ljava/lang/String;
    :cond_4
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 824
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 827
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 828
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 829
    .local v1, lastNamePrefix:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 834
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto/16 :goto_0
.end method

.method private parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 851
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 856
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    :cond_2
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 860
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 863
    :cond_3
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 719
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v0, v1, v2

    .line 724
    .local v0, firstToken:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    :cond_2
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 729
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 6
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/16 v5, 0x2e

    .line 737
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v3, v4

    .line 744
    .local v0, lastToken:Ljava/lang/String;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 746
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    :cond_2
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 750
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 754
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 758
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, normalized:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 760
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 761
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 765
    :cond_4
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 772
    .local v2, pos:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 774
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 775
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 776
    #setter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$102(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 780
    :cond_6
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 784
    add-int/lit8 v2, v2, -0x1

    .line 785
    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 788
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "fullName"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 423
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 424
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, token:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 427
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_0
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 429
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 430
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 431
    :cond_1
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 432
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 433
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 436
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 441
    .end local v1           #token:Ljava/lang/String;
    :cond_3
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 442
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 443
    .local v0, length:I
    if-ne v0, v5, :cond_5

    .line 444
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 445
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 457
    .end local v0           #length:I
    :cond_4
    :goto_1
    return-void

    .line 446
    .restart local v0       #length:I
    :cond_5
    if-ne v0, v8, :cond_6

    .line 447
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 448
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 449
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1

    .line 450
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 451
    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 452
    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 453
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1
.end method

.method private splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 466
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, token:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 470
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 471
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 472
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 473
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 475
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 478
    .end local v0           #token:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 487
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 488
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 490
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 491
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, token:Ljava/lang/String;
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 493
    iput-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 494
    :cond_0
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 495
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 496
    iput-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 498
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 504
    .end local v4           #token:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    .line 507
    .local v1, familyNameLength:I
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 508
    .local v6, twoLengthFamilyName:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 509
    const/4 v1, 0x2

    .line 514
    .end local v6           #twoLengthFamilyName:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 515
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v1, :cond_4

    .line 516
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 519
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #familyNameLength:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void

    .line 507
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #familyNameLength:I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #twoLengthFamilyName:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 398
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, tokens:Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 403
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 404
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 407
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 408
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 411
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 412
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdjustedFullNameStyle(I)I
    .locals 5
    .parameter "nameStyle"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v2, 0x3

    .line 693
    if-nez p1, :cond_4

    .line 694
    sget-object v3, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p1, v0

    .line 712
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 696
    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    .line 697
    goto :goto_0

    .line 698
    :cond_2
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move p1, v2

    .line 699
    goto :goto_0

    .line 701
    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    .line 703
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 704
    sget-object v3, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move p1, v0

    .line 705
    goto :goto_0

    .line 706
    :cond_5
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p1, v1

    .line 707
    goto :goto_0

    :cond_6
    move p1, v2

    .line 709
    goto :goto_0
.end method

.method public getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I
    .locals 4
    .parameter "nameStyle"
    .parameter "phoneticNameStyle"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 909
    if-eqz p2, :cond_1

    .line 910
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_1

    .line 911
    :cond_0
    if-ne p2, v0, :cond_2

    move p1, v0

    .line 921
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 913
    .restart local p1
    :cond_2
    if-ne p2, v1, :cond_3

    move p1, v1

    .line 914
    goto :goto_0

    .line 916
    :cond_3
    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    move p1, v2

    .line 917
    goto :goto_0
.end method

.method public guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 982
    if-nez p1, :cond_1

    .line 983
    const/4 v2, 0x0

    .line 1014
    :cond_0
    :goto_0
    return v2

    .line 986
    :cond_1
    const/4 v2, 0x0

    .line 987
    .local v2, nameStyle:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 988
    .local v1, length:I
    const/4 v3, 0x0

    .line 989
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 990
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 991
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 992
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 994
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 996
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 999
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/NameSplitter;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1002
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1003
    const/4 v2, 0x4

    goto :goto_0

    .line 1006
    :cond_3
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1007
    const/4 v2, 0x5

    goto :goto_0

    .line 1010
    :cond_4
    const/4 v2, 0x1

    .line 1012
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1013
    goto :goto_1
.end method

.method public guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 898
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 899
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    iget v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v0

    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 901
    return-void
.end method

.method public guessPhoneticNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 1067
    if-nez p1, :cond_1

    .line 1068
    const/4 v2, 0x0

    .line 1091
    :cond_0
    :goto_0
    return v2

    .line 1071
    :cond_1
    const/4 v2, 0x0

    .line 1072
    .local v2, nameStyle:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1073
    .local v1, length:I
    const/4 v3, 0x0

    .line 1074
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 1075
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1076
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1077
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 1078
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    const/4 v2, 0x4

    goto :goto_0

    .line 1081
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1082
    const/4 v2, 0x5

    goto :goto_0

    .line 1084
    :cond_3
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1085
    const/4 v2, 0x3

    goto :goto_0

    .line 1088
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1089
    goto :goto_1
.end method

.method public join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;
    .locals 9
    .parameter "name"
    .parameter "givenNameFirst"
    .parameter "includePrefix"

    .prologue
    .line 527
    if-eqz p3, :cond_0

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 528
    .local v1, prefix:Ljava/lang/String;
    :goto_0
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    packed-switch v0, :pswitch_data_0

    .line 540
    if-eqz p2, :cond_1

    .line 541
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_1
    return-object v0

    .line 527
    .end local v1           #prefix:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 532
    .restart local v1       #prefix:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 536
    :pswitch_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 544
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 555
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 349
    if-nez p2, :cond_0

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 354
    .local v0, fullNameStyle:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 358
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "fullName"
    .parameter "fullNameStyle"

    .prologue
    .line 366
    if-nez p2, :cond_0

    .line 388
    :goto_0
    return-void

    .line 370
    :cond_0
    iput p3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 372
    packed-switch p3, :pswitch_data_0

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tokenize([Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "tokens"
    .parameter "fullName"

    .prologue
    const/4 v0, 0x0

    .line 322
    if-nez p2, :cond_1

    .line 341
    :cond_0
    return v0

    .line 326
    :cond_1
    new-instance v4, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v4, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 328
    .local v4, tokenizer:Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 332
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    aget-object v2, v5, v6

    .line 333
    .local v2, firstToken:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 336
    :cond_2
    const/4 v0, 0x0

    .line 337
    .local v0, count:I
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    .local v3, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 338
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    #getter for: Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aput-object v5, p1, v0

    .line 337
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0
.end method
