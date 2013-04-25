.class public Lcom/andrew/apollo/lastfm/api/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/lastfm/api/Result$Status;
    }
.end annotation


# instance fields
.field protected errorCode:I

.field protected errorMessage:Ljava/lang/String;

.field protected httpErrorCode:I

.field protected resultDocument:Lorg/w3c/dom/Document;

.field protected status:Lcom/andrew/apollo/lastfm/api/Result$Status;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorMessage:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorCode:I

    .line 49
    iput v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->httpErrorCode:I

    .line 59
    sget-object v0, Lcom/andrew/apollo/lastfm/api/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/api/Result$Status;

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->status:Lcom/andrew/apollo/lastfm/api/Result$Status;

    .line 60
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorMessage:Ljava/lang/String;

    .line 61
    return-void
.end method

.method protected constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2
    .parameter "resultDocument"

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorMessage:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorCode:I

    .line 49
    iput v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->httpErrorCode:I

    .line 54
    sget-object v0, Lcom/andrew/apollo/lastfm/api/Result$Status;->OK:Lcom/andrew/apollo/lastfm/api/Result$Status;

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->status:Lcom/andrew/apollo/lastfm/api/Result$Status;

    .line 55
    iput-object p1, p0, Lcom/andrew/apollo/lastfm/api/Result;->resultDocument:Lorg/w3c/dom/Document;

    .line 56
    return-void
.end method

.method static createHttpErrorResult(ILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 1
    .parameter "httpErrorCode"
    .parameter "errorMessage"

    .prologue
    .line 68
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Result;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/lastfm/api/Result;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, r:Lcom/andrew/apollo/lastfm/api/Result;
    iput p0, v0, Lcom/andrew/apollo/lastfm/api/Result;->httpErrorCode:I

    .line 70
    return-object v0
.end method

.method static createOkResult(Lorg/w3c/dom/Document;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 1
    .parameter "resultDocument"

    .prologue
    .line 64
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Result;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/lastfm/api/Result;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method static createRestErrorResult(ILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 1
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 74
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Result;

    invoke-direct {v0, p1}, Lcom/andrew/apollo/lastfm/api/Result;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, r:Lcom/andrew/apollo/lastfm/api/Result;
    iput p0, v0, Lcom/andrew/apollo/lastfm/api/Result;->errorCode:I

    .line 76
    return-object v0
.end method


# virtual methods
.method public getContentElement()Lcom/andrew/apollo/utils/DomElement;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/andrew/apollo/utils/DomElement;

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->resultDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/andrew/apollo/utils/DomElement;-><init>(Lorg/w3c/dom/Element;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/utils/DomElement;->getChild(Ljava/lang/String;)Lcom/andrew/apollo/utils/DomElement;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpErrorCode()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->httpErrorCode:I

    return v0
.end method

.method public getResultDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->resultDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getStatus()Lcom/andrew/apollo/lastfm/api/Result$Status;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->status:Lcom/andrew/apollo/lastfm/api/Result$Status;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Result;->status:Lcom/andrew/apollo/lastfm/api/Result$Status;

    sget-object v1, Lcom/andrew/apollo/lastfm/api/Result$Status;->OK:Lcom/andrew/apollo/lastfm/api/Result$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result[isSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/andrew/apollo/lastfm/api/Result;->isSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->httpErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Result;->status:Lcom/andrew/apollo/lastfm/api/Result$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
