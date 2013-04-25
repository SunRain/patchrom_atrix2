.class Lcom/androidquery/auth/GoogleHandle$Task;
.super Landroid/os/AsyncTask;
.source "GoogleHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/GoogleHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/GoogleHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/GoogleHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/GoogleHandle;Lcom/androidquery/auth/GoogleHandle$Task;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;-><init>(Lcom/androidquery/auth/GoogleHandle;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    #getter for: Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$0(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    #getter for: Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/androidquery/auth/GoogleHandle;->access$1(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    #getter for: Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;
    invoke-static {v3}, Lcom/androidquery/auth/GoogleHandle;->access$2(Lcom/androidquery/auth/GoogleHandle;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    #getter for: Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;
    invoke-static {v5}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v5

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v10

    .line 164
    .local v10, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v8, 0x0

    .line 167
    .local v8, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v10}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    move-object v8, v0
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :goto_0
    return-object v8

    .line 169
    :catch_0
    move-exception v9

    .line 170
    .local v9, e:Landroid/accounts/AuthenticatorException;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    :catch_1
    move-exception v9

    .line 172
    .local v9, e:Ljava/io/IOException;
    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    .end local v9           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/androidquery/auth/GoogleHandle;->access$4(Lcom/androidquery/auth/GoogleHandle;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    #getter for: Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;
    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/GoogleHandle;->success(Landroid/content/Context;)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    #getter for: Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;
    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, -0x66

    const-string v3, "rejected"

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidquery/auth/GoogleHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
