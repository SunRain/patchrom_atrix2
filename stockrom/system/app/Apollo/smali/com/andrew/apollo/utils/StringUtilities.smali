.class public final Lcom/andrew/apollo/utils/StringUtilities;
.super Ljava/lang/Object;
.source "StringUtilities.java"


# static fields
.field private static MBID_PATTERN:Ljava/util/regex/Pattern;

.field private static final MD5_PATTERN:Ljava/util/regex/Pattern;

.field private static digest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "^[0-9a-f]{8}\\-[0-9a-f]{4}\\-[0-9a-f]{4}\\-[0-9a-f]{4}\\-[0-9a-f]{12}$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/StringUtilities;->MBID_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "[a-fA-F0-9]{32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/StringUtilities;->MD5_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/andrew/apollo/utils/StringUtilities;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 152
    const-string v0, "[*:/\\\\?|<>\"]"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertFromBoolean(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    const-string v0, "1"

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static convertToBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "resultString"

    .prologue
    .line 172
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_0

    .line 112
    :goto_0
    return-object v0

    .line 108
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isMD5(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/andrew/apollo/utils/StringUtilities;->MD5_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMbid(Ljava/lang/String;)Z
    .locals 2
    .parameter "nameOrMbid"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/andrew/apollo/utils/StringUtilities;->MBID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "strings.length % 2 != 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v1, mp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 138
    aget-object v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 140
    :cond_1
    return-object v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "s"

    .prologue
    .line 66
    :try_start_0
    sget-object v7, Lcom/andrew/apollo/utils/StringUtilities;->digest:Ljava/security/MessageDigest;

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 67
    .local v3, bytes:[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    .local v2, b:Ljava/lang/StringBuilder;
    move-object v1, v3

    .local v1, arr$:[B
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-byte v0, v1, v5

    .line 69
    .local v0, aByte:B
    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, hex:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 71
    const/16 v7, 0x30

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .end local v0           #aByte:B
    .end local v4           #hex:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 78
    .end local v1           #arr$:[B
    .end local v2           #b:Ljava/lang/StringBuilder;
    .end local v3           #bytes:[B
    .end local v5           #i$:I
    .end local v6           #len$:I
    :goto_1
    return-object v7

    .line 75
    :catch_0
    move-exception v7

    .line 78
    const/4 v7, 0x0

    goto :goto_1
.end method
