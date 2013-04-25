.class Lcom/android/settings/cyanogenmod/CIDLogoActivity$2;
.super Ljava/lang/Object;
.source "CIDLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/CIDLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/CIDLogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity$2;->this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity$2;->this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.cyanogenmod.CIDCircus"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity$2;->this$0:Lcom/android/settings/cyanogenmod/CIDLogoActivity;

    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->finish()V

    .line 128
    const/4 v1, 0x1

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "CIDLogoActivity"

    const-string v2, "Couldn\'t find a circus of CID\'s."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
