.class public abstract Lcom/androidquery/auth/AccountHandle;
.super Ljava/lang/Object;
.source "AccountHandle.java"


# instance fields
.field private callbacks:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V
    .locals 0
    .parameter
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, cb:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    return-void
.end method

.method protected abstract auth()V
.end method

.method public declared-synchronized auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, cb:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    .line 37
    iget-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lcom/androidquery/auth/AccountHandle;->auth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :goto_0
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract authenticated()Z
.end method

.method public abstract expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")Z"
        }
    .end annotation
.end method

.method protected declared-synchronized failure(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "code"
    .parameter "message"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 66
    .local v0, cb:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    invoke-virtual {v0, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->failure(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    .end local v0           #cb:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "url"

    .prologue
    .line 89
    return-object p1
.end method

.method public getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "url"

    .prologue
    .line 85
    return-object p1
.end method

.method public abstract reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)Z"
        }
    .end annotation
.end method

.method protected declared-synchronized success(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/androidquery/auth/AccountHandle;->callbacks:Ljava/util/LinkedHashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AbstractAjaxCallback;

    .line 53
    .local v0, cb:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v0           #cb:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<**>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unauth()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
