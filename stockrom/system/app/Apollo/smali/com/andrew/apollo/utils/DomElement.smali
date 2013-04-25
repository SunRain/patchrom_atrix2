.class public Lcom/andrew/apollo/utils/DomElement;
.super Ljava/lang/Object;
.source "DomElement.java"


# instance fields
.field private e:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "elem"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    .line 50
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;)Lcom/andrew/apollo/utils/DomElement;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v5, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v5, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 113
    .local v3, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v4

    .line 115
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, j:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 116
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 117
    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iget-object v6, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    if-ne v5, v6, :cond_2

    .line 118
    new-instance v4, Lcom/andrew/apollo/utils/DomElement;

    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1           #item:Lorg/w3c/dom/Node;
    invoke-direct {v4, v1}, Lcom/andrew/apollo/utils/DomElement;-><init>(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 115
    .restart local v1       #item:Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getChildText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/utils/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/utils/DomElement;

    move-result-object v0

    .line 132
    .local v0, child:Lcom/andrew/apollo/utils/DomElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/andrew/apollo/utils/DomElement;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/utils/DomElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/utils/DomElement;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/andrew/apollo/utils/DomElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, l:Ljava/util/List;,"Ljava/util/List<Lcom/andrew/apollo/utils/DomElement;>;"
    iget-object v4, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 151
    .local v2, list:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 152
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 153
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    if-ne v4, v5, :cond_0

    .line 154
    new-instance v4, Lcom/andrew/apollo/utils/DomElement;

    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3           #node:Lorg/w3c/dom/Node;
    invoke-direct {v4, v3}, Lcom/andrew/apollo/utils/DomElement;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    return-object v1
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    .line 96
    iget-object v4, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    invoke-interface {v4, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 97
    .local v3, list:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .local v2, j:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 98
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 99
    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    iget-object v5, p0, Lcom/andrew/apollo/utils/DomElement;->e:Lorg/w3c/dom/Element;

    if-ne v4, v5, :cond_0

    .line 100
    const/4 v4, 0x1

    .line 102
    .end local v1           #item:Lorg/w3c/dom/Node;
    :goto_1
    return v4

    .line 97
    .restart local v1       #item:Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
