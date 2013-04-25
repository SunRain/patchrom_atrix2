.class public abstract Lcom/andrew/apollo/lastfm/api/MusicEntry;
.super Lcom/andrew/apollo/lastfm/api/ImageHolder;
.source "MusicEntry.java"


# instance fields
.field protected id:Ljava/lang/String;

.field protected mbid:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected percentageChange:I

.field protected tags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    .line 62
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/andrew/apollo/lastfm/api/MusicEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1
    .parameter "name"
    .parameter "url"
    .parameter "mbid"
    .parameter "playcount"
    .parameter "listeners"
    .parameter "streamable"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/api/ImageHolder;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->tags:Ljava/util/Collection;

    .line 67
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->url:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->mbid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected static loadStandardInfo(Lcom/andrew/apollo/lastfm/api/MusicEntry;Lcom/andrew/apollo/utils/DomElement;)V
    .locals 1
    .parameter "entry"
    .parameter "element"

    .prologue
    .line 117
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/andrew/apollo/utils/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->name:Ljava/lang/String;

    .line 118
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lcom/andrew/apollo/utils/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->url:Ljava/lang/String;

    .line 119
    const-string v0, "mbid"

    invoke-virtual {p1, v0}, Lcom/andrew/apollo/utils/DomElement;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->mbid:Ljava/lang/String;

    .line 121
    invoke-static {p0, p1}, Lcom/andrew/apollo/lastfm/api/ImageHolder;->loadImages(Lcom/andrew/apollo/lastfm/api/ImageHolder;Lcom/andrew/apollo/utils/DomElement;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMbid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->mbid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->tags:Ljava/util/Collection;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mbid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/MusicEntry;->mbid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
