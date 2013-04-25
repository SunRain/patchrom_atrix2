.class Lcom/andrew/apollo/lastfm/api/Album$AlbumFactory;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Lcom/andrew/apollo/lastfm/api/ItemFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/lastfm/api/Album;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/andrew/apollo/lastfm/api/ItemFactory",
        "<",
        "Lcom/andrew/apollo/lastfm/api/Album;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/lastfm/api/Album$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/api/Album$AlbumFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Lcom/andrew/apollo/lastfm/api/Album;
    .locals 3
    .parameter "element"

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Album;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/andrew/apollo/lastfm/api/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/andrew/apollo/lastfm/api/Album$1;)V

    .line 105
    .local v0, album:Lcom/andrew/apollo/lastfm/api/Album;
    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/api/MusicEntry;->loadStandardInfo(Lcom/andrew/apollo/lastfm/api/MusicEntry;Lcom/andrew/apollo/utils/DomElement;)V

    .line 106
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/utils/DomElement;->hasChild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/utils/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/utils/DomElement;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/utils/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/api/Album;->access$202(Lcom/andrew/apollo/lastfm/api/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    #getter for: Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/andrew/apollo/lastfm/api/Album;->access$200(Lcom/andrew/apollo/lastfm/api/Album;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/andrew/apollo/utils/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/andrew/apollo/lastfm/api/Album;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/andrew/apollo/lastfm/api/Album;->access$202(Lcom/andrew/apollo/lastfm/api/Album;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/lastfm/api/Album$AlbumFactory;->createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Lcom/andrew/apollo/lastfm/api/Album;

    move-result-object v0

    return-object v0
.end method
