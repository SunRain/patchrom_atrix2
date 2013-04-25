.class public final enum Lcom/andrew/apollo/lastfm/api/ImageSize;
.super Ljava/lang/Enum;
.source "ImageSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andrew/apollo/lastfm/api/ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/andrew/apollo/lastfm/api/ImageSize;

.field public static final enum LARGE:Lcom/andrew/apollo/lastfm/api/ImageSize;

.field public static final enum LARGESQUARE:Lcom/andrew/apollo/lastfm/api/ImageSize;

.field public static final enum ORIGINAL:Lcom/andrew/apollo/lastfm/api/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/andrew/apollo/lastfm/api/ImageSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/lastfm/api/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/ImageSize;->LARGE:Lcom/andrew/apollo/lastfm/api/ImageSize;

    new-instance v0, Lcom/andrew/apollo/lastfm/api/ImageSize;

    const-string v1, "LARGESQUARE"

    invoke-direct {v0, v1, v3}, Lcom/andrew/apollo/lastfm/api/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/api/ImageSize;

    new-instance v0, Lcom/andrew/apollo/lastfm/api/ImageSize;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v4}, Lcom/andrew/apollo/lastfm/api/ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/ImageSize;->ORIGINAL:Lcom/andrew/apollo/lastfm/api/ImageSize;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/andrew/apollo/lastfm/api/ImageSize;

    sget-object v1, Lcom/andrew/apollo/lastfm/api/ImageSize;->LARGE:Lcom/andrew/apollo/lastfm/api/ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/andrew/apollo/lastfm/api/ImageSize;->LARGESQUARE:Lcom/andrew/apollo/lastfm/api/ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/andrew/apollo/lastfm/api/ImageSize;->ORIGINAL:Lcom/andrew/apollo/lastfm/api/ImageSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/andrew/apollo/lastfm/api/ImageSize;->$VALUES:[Lcom/andrew/apollo/lastfm/api/ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/ImageSize;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/andrew/apollo/lastfm/api/ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/api/ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/andrew/apollo/lastfm/api/ImageSize;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/andrew/apollo/lastfm/api/ImageSize;->$VALUES:[Lcom/andrew/apollo/lastfm/api/ImageSize;

    invoke-virtual {v0}, [Lcom/andrew/apollo/lastfm/api/ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/andrew/apollo/lastfm/api/ImageSize;

    return-object v0
.end method
