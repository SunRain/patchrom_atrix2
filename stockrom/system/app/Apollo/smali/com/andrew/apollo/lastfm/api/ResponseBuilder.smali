.class public final Lcom/andrew/apollo/lastfm/api/ResponseBuilder;
.super Ljava/lang/Object;
.source "ResponseBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static buildCollection(Lcom/andrew/apollo/lastfm/api/Result;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/util/Collection;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/api/Result;",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, factory:Lcom/andrew/apollo/lastfm/api/ItemFactory;,"Lcom/andrew/apollo/lastfm/api/ItemFactory<TT;>;"
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->getContentElement()Lcom/andrew/apollo/utils/DomElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildCollection(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildCollection(Lcom/andrew/apollo/lastfm/api/Result;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/api/Result;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildCollection(Lcom/andrew/apollo/lastfm/api/Result;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static buildCollection(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/util/Collection;
    .locals 5
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, factory:Lcom/andrew/apollo/lastfm/api/ItemFactory;,"Lcom/andrew/apollo/lastfm/api/ItemFactory<TT;>;"
    if-nez p0, :cond_1

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 73
    :cond_0
    return-object v3

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/utils/DomElement;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, children:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/andrew/apollo/utils/DomElement;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v3, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/utils/DomElement;

    .line 71
    .local v0, child:Lcom/andrew/apollo/utils/DomElement;
    invoke-interface {p1, v0}, Lcom/andrew/apollo/lastfm/api/ItemFactory;->createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static buildCollection(Lcom/andrew/apollo/utils/DomElement;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildCollection(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static buildItem(Lcom/andrew/apollo/lastfm/api/Result;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/lang/Object;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/api/Result;",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, factory:Lcom/andrew/apollo/lastfm/api/ItemFactory;,"Lcom/andrew/apollo/lastfm/api/ItemFactory<TT;>;"
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->getContentElement()Lcom/andrew/apollo/utils/DomElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildItem(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildItem(Lcom/andrew/apollo/lastfm/api/Result;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/api/Result;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildItem(Lcom/andrew/apollo/lastfm/api/Result;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static buildItem(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/lang/Object;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, factory:Lcom/andrew/apollo/lastfm/api/ItemFactory;,"Lcom/andrew/apollo/lastfm/api/ItemFactory<TT;>;"
    invoke-interface {p1, p0}, Lcom/andrew/apollo/lastfm/api/ItemFactory;->createItemFromElement(Lcom/andrew/apollo/utils/DomElement;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static buildItem(Lcom/andrew/apollo/utils/DomElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildItem(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/lastfm/api/Result;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .locals 4
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/api/Result;",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, factory:Lcom/andrew/apollo/lastfm/api/ItemFactory;,"Lcom/andrew/apollo/lastfm/api/ItemFactory<TT;>;"
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v3, v3, v2}, Lcom/andrew/apollo/lastfm/api/PaginatedResult;-><init>(IILjava/util/Collection;)V

    .line 86
    :goto_0
    return-object v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->getContentElement()Lcom/andrew/apollo/utils/DomElement;

    move-result-object v0

    .line 86
    .local v0, contentElement:Lcom/andrew/apollo/utils/DomElement;
    invoke-static {v0, v0, p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v1

    goto :goto_0
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/lastfm/api/Result;Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .locals 1
    .parameter "result"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/lastfm/api/Result;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/lastfm/api/Result;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v0

    return-object v0
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .locals 5
    .parameter "contentElement"
    .parameter "childElement"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, factory:Lcom/andrew/apollo/lastfm/api/ItemFactory;,"Lcom/andrew/apollo/lastfm/api/ItemFactory<TT;>;"
    invoke-static {p1, p2}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildCollection(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Ljava/util/Collection;

    move-result-object v0

    .line 96
    .local v0, items:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const-string v4, "totalPages"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/utils/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, totalPagesAttribute:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 98
    const-string v4, "totalpages"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/utils/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    :cond_0
    const-string v4, "page"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/utils/DomElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, page:I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, totalPages:I
    new-instance v4, Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    invoke-direct {v4, v1, v2, v0}, Lcom/andrew/apollo/lastfm/api/PaginatedResult;-><init>(IILjava/util/Collection;)V

    return-object v4
.end method

.method public static buildPaginatedResult(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/utils/DomElement;Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;
    .locals 1
    .parameter "contentElement"
    .parameter "childElement"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Lcom/andrew/apollo/utils/DomElement;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/api/PaginatedResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/andrew/apollo/lastfm/api/ResponseBuilder;->buildPaginatedResult(Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/utils/DomElement;Lcom/andrew/apollo/lastfm/api/ItemFactory;)Lcom/andrew/apollo/lastfm/api/PaginatedResult;

    move-result-object v0

    return-object v0
.end method

.method private static getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/andrew/apollo/lastfm/api/ItemFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, itemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/andrew/apollo/lastfm/api/ItemFactoryBuilder;->getFactoryBuilder()Lcom/andrew/apollo/lastfm/api/ItemFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/andrew/apollo/lastfm/api/ItemFactoryBuilder;->getItemFactory(Ljava/lang/Class;)Lcom/andrew/apollo/lastfm/api/ItemFactory;

    move-result-object v0

    return-object v0
.end method
