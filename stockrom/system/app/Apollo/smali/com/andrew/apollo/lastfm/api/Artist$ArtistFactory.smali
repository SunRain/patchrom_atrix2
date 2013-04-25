.class Lcom/andrew/apollo/lastfm/api/Artist$ArtistFactory;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Lcom/andrew/apollo/lastfm/api/ItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/lastfm/api/Artist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/andrew/apollo/lastfm/api/ItemFactory",
        "<",
        "Lcom/andrew/apollo/lastfm/api/Artist;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/lastfm/api/Artist$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/api/Artist$ArtistFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Lcom/andrew/apollo/lastfm/api/Artist;
    .locals 2
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 94
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Artist;

    invoke-direct {v0, v1, v1}, Lcom/andrew/apollo/lastfm/api/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v0, artist:Lcom/andrew/apollo/lastfm/api/Artist;
    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/api/MusicEntry;->loadStandardInfo(Lcom/andrew/apollo/lastfm/api/MusicEntry;Lcom/andrew/apollo/utils/DomElement;)V

    .line 96
    return-object v0
.end method

.method public bridge synthetic createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/lastfm/api/Artist$ArtistFactory;->createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Lcom/andrew/apollo/lastfm/api/Artist;

    move-result-object v0

    return-object v0
.end method
