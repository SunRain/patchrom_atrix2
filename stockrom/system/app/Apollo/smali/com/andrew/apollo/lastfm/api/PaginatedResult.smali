.class public Lcom/andrew/apollo/lastfm/api/PaginatedResult;
.super Ljava/lang/Object;
.source "PaginatedResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private page:I

.field private pageResults:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private totalPages:I


# direct methods
.method constructor <init>(IILjava/util/Collection;)V
    .locals 0
    .parameter "page"
    .parameter "totalPages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<TT;>;"
    .local p3, pageResults:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->page:I

    .line 47
    iput p2, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->totalPages:I

    .line 48
    iput-object p3, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->pageResults:Ljava/util/Collection;

    .line 49
    return-void
.end method


# virtual methods
.method public getPage()I
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<TT;>;"
    iget v0, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->page:I

    return v0
.end method

.method public getPageResults()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<TT;>;"
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->pageResults:Ljava/util/Collection;

    return-object v0
.end method

.method public getTotalPages()I
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<TT;>;"
    iget v0, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->totalPages:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<TT;>;"
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->pageResults:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->pageResults:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/andrew/apollo/lastfm/api/PaginatedResult;,"Lcom/andrew/apollo/lastfm/api/PaginatedResult<TT;>;"
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/PaginatedResult;->getPageResults()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
