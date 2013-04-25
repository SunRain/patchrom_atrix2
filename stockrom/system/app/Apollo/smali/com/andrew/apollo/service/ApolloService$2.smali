.class Lcom/andrew/apollo/service/ApolloService$2;
.super Landroid/content/BroadcastReceiver;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/service/ApolloService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.andrew.apollo.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/andrew/apollo/service/ApolloService;->gotoNext(Z)V

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.andrew.apollo.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 377
    :cond_3
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->prev()V

    goto :goto_0

    .line 378
    :cond_4
    const-string v3, "togglepause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.andrew.apollo.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 379
    :cond_5
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 380
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 381
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v4}, Lcom/andrew/apollo/service/ApolloService;->access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z

    goto :goto_0

    .line 383
    :cond_6
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto :goto_0

    .line 385
    :cond_7
    const-string v3, "pause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "com.andrew.apollo.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 386
    :cond_8
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 387
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v4}, Lcom/andrew/apollo/service/ApolloService;->access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z

    goto :goto_0

    .line 388
    :cond_9
    const-string v3, "play"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 389
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->play()V

    goto :goto_0

    .line 390
    :cond_a
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 391
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->pause()V

    .line 392
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mPausedByTransientLossOfFocus:Z
    invoke-static {v3, v4}, Lcom/andrew/apollo/service/ApolloService;->access$1502(Lcom/andrew/apollo/service/ApolloService;Z)Z

    .line 393
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/andrew/apollo/service/ApolloService;->seek(J)J

    goto/16 :goto_0

    .line 394
    :cond_b
    const-string v3, "togglefavorite"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 395
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_c

    .line 396
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->addToFavorites()V

    goto/16 :goto_0

    .line 398
    :cond_c
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->removeFromFavorites()V

    goto/16 :goto_0

    .line 400
    :cond_d
    const-string v3, "cyclerepeat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "com.andrew.apollo.musicservicecommand.cyclerepeat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 401
    :cond_e
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->cycleRepeat()V

    goto/16 :goto_0

    .line 402
    :cond_f
    const-string v3, "toggleshuffle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "com.andrew.apollo.musicservicecommand.toggleshuffle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 403
    :cond_10
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3}, Lcom/andrew/apollo/service/ApolloService;->toggleShuffle()V

    goto/16 :goto_0

    .line 404
    :cond_11
    const-string v3, "appwidgetupdate4x2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 405
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 406
    .local v1, appWidgetIds:[I
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x2:Lcom/andrew/apollo/app/widgets/AppWidget42;
    invoke-static {v3}, Lcom/andrew/apollo/service/ApolloService;->access$1600(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/app/widgets/AppWidget42;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3, v4, v1}, Lcom/andrew/apollo/app/widgets/AppWidget42;->performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V

    goto/16 :goto_0

    .line 407
    .end local v1           #appWidgetIds:[I
    :cond_12
    const-string v3, "appwidgetupdate4x1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 408
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 409
    .restart local v1       #appWidgetIds:[I
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider4x1:Lcom/andrew/apollo/app/widgets/AppWidget41;
    invoke-static {v3}, Lcom/andrew/apollo/service/ApolloService;->access$1700(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/app/widgets/AppWidget41;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3, v4, v1}, Lcom/andrew/apollo/app/widgets/AppWidget41;->performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V

    goto/16 :goto_0

    .line 410
    .end local v1           #appWidgetIds:[I
    :cond_13
    const-string v3, "appwidgetupdate1x1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 412
    .restart local v1       #appWidgetIds:[I
    iget-object v3, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #getter for: Lcom/andrew/apollo/service/ApolloService;->mAppWidgetProvider1x1:Lcom/andrew/apollo/app/widgets/AppWidget11;
    invoke-static {v3}, Lcom/andrew/apollo/service/ApolloService;->access$1800(Lcom/andrew/apollo/service/ApolloService;)Lcom/andrew/apollo/app/widgets/AppWidget11;

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/service/ApolloService$2;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {v3, v4, v1}, Lcom/andrew/apollo/app/widgets/AppWidget11;->performUpdate(Lcom/andrew/apollo/service/ApolloService;[I)V

    goto/16 :goto_0
.end method
