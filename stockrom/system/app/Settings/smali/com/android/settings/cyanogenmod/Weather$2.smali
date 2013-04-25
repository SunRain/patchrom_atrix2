.class Lcom/android/settings/cyanogenmod/Weather$2;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/Weather;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/Weather;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/Weather;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/cyanogenmod/Weather;->access$000(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/settings/cyanogenmod/Weather;->access$302(Lcom/android/settings/cyanogenmod/Weather;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 209
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Weather;->access$300(Lcom/android/settings/cyanogenmod/Weather;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Weather;->access$300(Lcom/android/settings/cyanogenmod/Weather;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/cyanogenmod/Weather;->access$000(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b076f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather$2;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Weather;->access$300(Lcom/android/settings/cyanogenmod/Weather;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 212
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/cyanogenmod/Weather$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cyanogenmod/Weather$2$1;-><init>(Lcom/android/settings/cyanogenmod/Weather$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    return-void
.end method
