.class public Lcom/androidquery/callback/AjaxStatus;
.super Ljava/lang/Object;
.source "AjaxStatus.java"


# static fields
.field public static final AUTH_ERROR:I = -0x66

.field public static final DATASTORE:I = 0x2

.field public static final DEVICE:I = 0x5

.field public static final FILE:I = 0x3

.field public static final MEMORY:I = 0x4

.field public static final NETWORK:I = 0x1

.field public static final NETWORK_ERROR:I = -0x65

.field public static final TRANSFORM_ERROR:I = -0x67


# instance fields
.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private code:I

.field private context:Lorg/apache/http/protocol/HttpContext;

.field private data:[B

.field private done:Z

.field private duration:J

.field private error:Ljava/lang/String;

.field private headers:[Lorg/apache/http/Header;

.field private invalid:Z

.field private message:Ljava/lang/String;

.field private reauth:Z

.field private redirect:Ljava/lang/String;

.field private refresh:Z

.field private source:I

.field private start:J

.field private time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 57
    const-string v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "message"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0xc8

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 57
    const-string v0, "OK"

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    .line 77
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 78
    iput-object p2, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method protected client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "client"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 128
    return-object p0
.end method

.method protected code(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "code"

    .prologue
    .line 87
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    .line 88
    return-object p0
.end method

.method protected context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "context"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->context:Lorg/apache/http/protocol/HttpContext;

    .line 108
    return-object p0
.end method

.method protected data([B)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "data"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->data:[B

    .line 146
    return-object p0
.end method

.method protected done()Lcom/androidquery/callback/AjaxStatus;
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/androidquery/callback/AjaxStatus;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 140
    return-object p0
.end method

.method protected error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "error"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->error:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public expired(J)Z
    .locals 8
    .parameter "expire"

    .prologue
    const/4 v6, 0x1

    .line 261
    iget-object v7, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 262
    .local v2, mod:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 263
    .local v4, now:J
    sub-long v0, v4, v2

    .line 265
    .local v0, diff:J
    cmp-long v7, v0, p1

    if-lez v7, :cond_0

    invoke-virtual {p0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 269
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->code:I

    return v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v1, p0, Lcom/androidquery/callback/AjaxStatus;->context:Lorg/apache/http/protocol/HttpContext;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 287
    :goto_0
    return-object v1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/androidquery/callback/AjaxStatus;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v2, "http.cookie-store"

    invoke-interface {v1, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    .line 285
    .local v0, store:Lorg/apache/http/client/CookieStore;
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected getData()[B
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->data:[B

    return-object v0
.end method

.method protected getDone()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->done:Z

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/androidquery/callback/AjaxStatus;->duration:J

    return-wide v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected getInvalid()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->invalid:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected getReauth()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    return v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->redirect:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->refresh:Z

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    return v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    return-object v0
.end method

.method protected headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "headers"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->headers:[Lorg/apache/http/Header;

    .line 133
    return-object p0
.end method

.method public invalidate()Lcom/androidquery/callback/AjaxStatus;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/callback/AjaxStatus;->invalid:Z

    .line 151
    return-object p0
.end method

.method protected message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "message"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->message:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method protected reauth(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "reauth"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->reauth:Z

    .line 123
    return-object p0
.end method

.method protected redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "redirect"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->redirect:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method protected refresh(Z)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "refresh"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/androidquery/callback/AjaxStatus;->refresh:Z

    .line 118
    return-object p0
.end method

.method protected source(I)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "source"

    .prologue
    .line 82
    iput p1, p0, Lcom/androidquery/callback/AjaxStatus;->source:I

    .line 83
    return-object p0
.end method

.method protected time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;
    .locals 0
    .parameter "time"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/androidquery/callback/AjaxStatus;->time:Ljava/util/Date;

    .line 113
    return-object p0
.end method
