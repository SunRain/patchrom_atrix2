.class public Lcom/android/providers/contacts/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final sComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static final sCompressingCollator:Ljava/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    .line 34
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 35
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    .line 41
    sget-object v0, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v2}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareComplexity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "name1"
    .parameter "name2"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, clean1:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, clean2:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/contacts/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v3, v0, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 61
    .local v2, diff:I
    if-eqz v2, :cond_0

    move v3, v2

    .line 71
    :goto_0
    return v3

    .line 67
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    neg-int v2, v3

    .line 68
    if-eqz v2, :cond_1

    move v3, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 79
    .local v4, letters:[C
    const/4 v2, 0x0

    .line 80
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 81
    aget-char v0, v4, v1

    .line 82
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    add-int/lit8 v3, v2, 0x1

    .end local v2           #length:I
    .local v3, length:I
    aput-char v0, v4, v2

    move v2, v3

    .line 80
    .end local v3           #length:I
    .restart local v2       #length:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0           #c:C
    :cond_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    .line 88
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 91
    :cond_2
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 49
    sget-object v1, Lcom/android/providers/contacts/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/android/providers/contacts/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 50
    .local v0, key:Ljava/text/CollationKey;
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/providers/contacts/util/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
