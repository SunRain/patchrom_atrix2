.class public Lcom/andrew/apollo/lastfm/api/Artist;
.super Lcom/andrew/apollo/lastfm/api/MusicEntry;
.source "Artist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/lastfm/api/Artist$1;,
        Lcom/andrew/apollo/lastfm/api/Artist$ArtistFactory;
    }
.end annotation


# static fields
.field static final FACTORY:Lcom/andrew/apollo/lastfm/api/ItemFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<",
            "Lcom/andrew/apollo/lastfm/api/Artist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Artist$ArtistFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/andrew/apollo/lastfm/api/Artist$ArtistFactory;-><init>(Lcom/andrew/apollo/lastfm/api/Artist$1;)V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/Artist;->FACTORY:Lcom/andrew/apollo/lastfm/api/ItemFactory;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "url"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/andrew/apollo/lastfm/api/MusicEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .parameter "name"
    .parameter "url"
    .parameter "mbid"
    .parameter "playcount"
    .parameter "listeners"
    .parameter "streamable"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/andrew/apollo/lastfm/api/MusicEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 55
    return-void
.end method

.method public static getImages(Ljava/lang/String;IILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<",
            "Lcom/andrew/apollo/lastfm/api/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {p0}, Lcom/andrew/apollo/utils/StringUtilities;->isMbid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "mbid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_0
    const-string v1, "page"

    invoke-static {v0, v1, p1}, Lcom/andrew/apollo/utils/MapUtilities;->nullSafePut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 86
    const-string v1, "limit"

    invoke-static {v0, v1, p2}, Lcom/andrew/apollo/utils/MapUtilities;->nullSafePut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 87
    invoke-static {}, Lcom/andrew/apollo/lastfm/api/Caller;->getInstance()Lcom/andrew/apollo/lastfm/api/Caller;

    move-result-object v1

    const-string v2, "artist.getImages"

    invoke-virtual {v1, v2, p3, v0}, Lcom/andrew/apollo/lastfm/api/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v0

    .line 88
    const-class v1, Lcom/andrew/apollo/lastfm/api/Image;

    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/lastfm/api/Result;Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    const-string v1, "artist"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getImages(Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .locals 1
    .parameter "artistOrMbid"
    .parameter "apiKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<",
            "Lcom/andrew/apollo/lastfm/api/Image;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-static {p0, v0, v0, p1}, Lcom/andrew/apollo/lastfm/api/Artist;->getImages(Ljava/lang/String;IILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v0

    return-object v0
.end method
