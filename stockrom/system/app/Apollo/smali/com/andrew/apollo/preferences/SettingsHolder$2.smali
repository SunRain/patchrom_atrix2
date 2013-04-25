.class Lcom/andrew/apollo/preferences/SettingsHolder$2;
.super Ljava/lang/Object;
.source "SettingsHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/preferences/SettingsHolder;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/preferences/SettingsHolder;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/preferences/SettingsHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/andrew/apollo/preferences/SettingsHolder$2;->this$0:Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v1, p0, Lcom/andrew/apollo/preferences/SettingsHolder$2;->this$0:Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-virtual {v1}, Lcom/andrew/apollo/preferences/SettingsHolder;->finish()V

    .line 159
    return-void
.end method
