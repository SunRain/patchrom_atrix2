.class public final enum Lcom/andrew/apollo/lastfm/api/Result$Status;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/lastfm/api/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andrew/apollo/lastfm/api/Result$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/andrew/apollo/lastfm/api/Result$Status;

.field public static final enum FAILED:Lcom/andrew/apollo/lastfm/api/Result$Status;

.field public static final enum OK:Lcom/andrew/apollo/lastfm/api/Result$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Result$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/lastfm/api/Result$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/Result$Status;->OK:Lcom/andrew/apollo/lastfm/api/Result$Status;

    .line 43
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Result$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/andrew/apollo/lastfm/api/Result$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/api/Result$Status;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/andrew/apollo/lastfm/api/Result$Status;

    sget-object v1, Lcom/andrew/apollo/lastfm/api/Result$Status;->OK:Lcom/andrew/apollo/lastfm/api/Result$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/andrew/apollo/lastfm/api/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/api/Result$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/andrew/apollo/lastfm/api/Result$Status;->$VALUES:[Lcom/andrew/apollo/lastfm/api/Result$Status;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result$Status;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/andrew/apollo/lastfm/api/Result$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/api/Result$Status;

    return-object v0
.end method

.method public static values()[Lcom/andrew/apollo/lastfm/api/Result$Status;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/andrew/apollo/lastfm/api/Result$Status;->$VALUES:[Lcom/andrew/apollo/lastfm/api/Result$Status;

    invoke-virtual {v0}, [Lcom/andrew/apollo/lastfm/api/Result$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/andrew/apollo/lastfm/api/Result$Status;

    return-object v0
.end method
