.class public Lcom/andrew/apollo/lastfm/api/Album;
.super Lcom/andrew/apollo/lastfm/api/MusicEntry;
.source "Album.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/lastfm/api/Album$1;,
        Lcom/andrew/apollo/lastfm/api/Album$AlbumFactory;
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/andrew/apollo/lastfm/api/ItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<",
            "Lcom/andrew/apollo/lastfm/api/Album;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artist:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Album$AlbumFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/andrew/apollo/lastfm/api/Album$AlbumFactory;-><init>(Lcom/andrew/apollo/lastfm/api/Album$1;)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/Album;->FACTORY:Lcom/andrew/apollo/lastfm/api/ItemFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"
    .parameter "artist"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/lastfm/api/MusicEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/lastfm/api/Album$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/andrew/apollo/lastfm/api/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/andrew/apollo/lastfm/api/Album;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/andrew/apollo/lastfm/api/Album;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;

    return-object p1
.end method

.method public static getInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Album;
    .locals 1
    .parameter "artist"
    .parameter "albumOrMbid"
    .parameter "apiKey"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/andrew/apollo/lastfm/api/Album;->getInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Album;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Album;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/andrew/apollo/utils/StringUtilities;->isMbid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "mbid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_0
    const-string v1, "username"

    invoke-static {v0, v1, p2}, Lcom/andrew/apollo/utils/MapUtilities;->nullSafePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/andrew/apollo/lastfm/api/Caller;->getInstance()Lcom/andrew/apollo/lastfm/api/Caller;

    move-result-object v1

    const-string v2, "album.getInfo"

    invoke-virtual {v1, v2, p3, v0}, Lcom/andrew/apollo/lastfm/api/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v0

    .line 98
    const-class v1, Lcom/andrew/apollo/lastfm/api/Album;

    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildItem(Lcom/andrew/apollo/lastfm/api/Result;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/lastfm/api/Album;

    return-object v0

    .line 93
    :cond_0
    const-string v1, "artist"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "album"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;

    return-object v0
.end method
