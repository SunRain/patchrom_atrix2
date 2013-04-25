.class Lcom/android/settings/cyanogenmod/Weather$3;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/Weather;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 265
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/Weather$3;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Weather$3;->this$0:Lcom/android/settings/cyanogenmod/Weather;

    #getter for: Lcom/android/settings/cyanogenmod/Weather;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/Weather;->access$200(Lcom/android/settings/cyanogenmod/Weather;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 269
    return-void
.end method
