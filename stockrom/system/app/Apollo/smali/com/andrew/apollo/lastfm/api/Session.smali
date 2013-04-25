.class public Lcom/andrew/apollo/lastfm/api/Session;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private subscriber:Z

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Session;
    .locals 2
    .parameter "apiKey"
    .parameter "secret"
    .parameter "sessionKey"

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/andrew/apollo/lastfm/api/Session;->createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/andrew/apollo/lastfm/api/Session;

    move-result-object v0

    return-object v0
.end method

.method public static createSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/andrew/apollo/lastfm/api/Session;
    .locals 1
    .parameter "apiKey"
    .parameter "secret"
    .parameter "sessionKey"
    .parameter "username"
    .parameter "subscriber"

    .prologue
    .line 78
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Session;

    invoke-direct {v0}, Lcom/andrew/apollo/lastfm/api/Session;-><init>()V

    .line 79
    .local v0, s:Lcom/andrew/apollo/lastfm/api/Session;
    iput-object p0, v0, Lcom/andrew/apollo/lastfm/api/Session;->apiKey:Ljava/lang/String;

    .line 80
    iput-object p1, v0, Lcom/andrew/apollo/lastfm/api/Session;->secret:Ljava/lang/String;

    .line 81
    iput-object p2, v0, Lcom/andrew/apollo/lastfm/api/Session;->key:Ljava/lang/String;

    .line 82
    iput-object p3, v0, Lcom/andrew/apollo/lastfm/api/Session;->username:Ljava/lang/String;

    .line 83
    iput-boolean p4, v0, Lcom/andrew/apollo/lastfm/api/Session;->subscriber:Z

    .line 84
    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Session;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Session;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Session;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/andrew/apollo/lastfm/api/Session;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isSubscriber()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/andrew/apollo/lastfm/api/Session;->subscriber:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session[apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Session;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Session;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Session;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/lastfm/api/Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/andrew/apollo/lastfm/api/Session;->subscriber:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
