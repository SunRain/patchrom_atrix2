.class Lcom/android/settings/cyanogenmod/LightLevelsActivity$1;
.super Ljava/lang/Object;
.source "LightLevelsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/LightLevelsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$1;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 109
    return-void
.end method
