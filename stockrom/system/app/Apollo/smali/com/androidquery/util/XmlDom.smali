.class public Lcom/androidquery/util/XmlDom;
.super Ljava/lang/Object;
.source "XmlDom.java"


# instance fields
.field private root:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 112
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 113
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 114
    .local v1, doc:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    iput-object v4, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 115
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;-><init>([B)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;-><init>(Ljava/io/InputStream;)V

    .line 98
    return-void
.end method

.method private static convert(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 4
    .parameter "node"
    .parameter "tag"
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 278
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 279
    const/4 v1, 0x0

    .line 294
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 282
    check-cast v0, Lorg/w3c/dom/Element;

    .line 284
    .local v0, e:Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 286
    .local v1, result:Lcom/androidquery/util/XmlDom;
    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    :cond_4
    new-instance v1, Lcom/androidquery/util/XmlDom;

    .end local v1           #result:Lcom/androidquery/util/XmlDom;
    invoke-direct {v1, v0}, Lcom/androidquery/util/XmlDom;-><init>(Lorg/w3c/dom/Element;)V

    .restart local v1       #result:Lcom/androidquery/util/XmlDom;
    goto :goto_0
.end method

.method private static convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "nl"
    .parameter "tag"
    .parameter "attr"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/androidquery/util/XmlDom;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 273
    return-object v1

    .line 269
    :cond_0
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v2

    .line 270
    .local v2, xml:Lcom/androidquery/util/XmlDom;
    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private serialize(Lorg/w3c/dom/Element;I)Ljava/lang/String;
    .locals 8
    .parameter "e"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 364
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 365
    .local v2, s:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 367
    .local v4, sw:Ljava/io/StringWriter;
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 368
    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 370
    const/4 v3, 0x0

    .line 371
    .local v3, spaces:Ljava/lang/String;
    if-lez p2, :cond_0

    .line 372
    new-array v0, p2, [C

    .line 373
    .local v0, chars:[C
    const/16 v6, 0x20

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 374
    new-instance v3, Ljava/lang/String;

    .end local v3           #spaces:Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 377
    .end local v0           #chars:[C
    .restart local v3       #spaces:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v2, v7, v3}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 378
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 380
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 385
    .end local v2           #s:Lorg/xmlpull/v1/XmlSerializer;
    .end local v3           #spaces:Ljava/lang/String;
    .end local v4           #sw:Ljava/io/StringWriter;
    :goto_0
    return-object v5

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-direct {p0, p2, p3, p4}, Lcom/androidquery/util/XmlDom;->writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 446
    const-string v0, ""

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    move v1, v2

    .line 450
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 456
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v2

    .line 462
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 484
    if-lez v1, :cond_1

    .line 485
    invoke-direct {p0, p2, p3, p4}, Lcom/androidquery/util/XmlDom;->writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 489
    :cond_1
    const-string v0, ""

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    return-void

    .line 451
    :cond_2
    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 452
    const-string v5, ""

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 464
    :cond_3
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    .line 468
    packed-switch v5, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v0, v1

    .line 462
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 470
    :pswitch_1
    check-cast v0, Lorg/w3c/dom/Element;

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v0, p2, v5, p4}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 471
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 472
    goto :goto_3

    .line 474
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v0, v1

    .line 475
    goto :goto_3

    .line 477
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_2

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private text(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 434
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 436
    :cond_1
    return-object v0

    .line 424
    :pswitch_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 428
    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .locals 2
    .parameter "s"
    .parameter "depth"
    .parameter "spaces"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p3, :cond_0

    .line 391
    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 396
    .end local v0           #i:I
    :cond_0
    return-void

    .line 393
    .restart local v0       #i:I
    :cond_1
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public child(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 1
    .parameter "tag"

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v0

    return-object v0
.end method

.method public child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 2
    .parameter "tag"
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, c:Ljava/util/List;,"Ljava/util/List<Lcom/androidquery/util/XmlDom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 212
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/util/XmlDom;

    goto :goto_0
.end method

.method public children(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "tag"
    .parameter "attr"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 3
    .parameter "tag"

    .prologue
    .line 134
    iget-object v2, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v2, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 136
    .local v0, nl:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 138
    .local v1, result:Lcom/androidquery/util/XmlDom;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    new-instance v1, Lcom/androidquery/util/XmlDom;

    .end local v1           #result:Lcom/androidquery/util/XmlDom;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {v1, v2}, Lcom/androidquery/util/XmlDom;-><init>(Lorg/w3c/dom/Element;)V

    .line 143
    .restart local v1       #result:Lcom/androidquery/util/XmlDom;
    :cond_0
    return-object v1
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 2
    .parameter "tag"
    .parameter "attr"
    .parameter "value"

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, tags:Ljava/util/List;,"Ljava/util/List<Lcom/androidquery/util/XmlDom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const/4 v1, 0x0

    .line 167
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/util/XmlDom;

    goto :goto_0
.end method

.method public tags(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "tag"
    .parameter "attr"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 260
    .local v0, nl:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public text()Ljava/lang/String;
    .locals 5

    .prologue
    .line 407
    iget-object v3, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 408
    .local v1, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 415
    :goto_0
    return-object v3

    .line 410
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 412
    :cond_1
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public text(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/androidquery/util/XmlDom;->child(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v0

    .line 311
    .local v0, dom:Lcom/androidquery/util/XmlDom;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 312
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/androidquery/util/XmlDom;->text()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidquery/util/XmlDom;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "intentSpaces"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
