.class Lcom/android/settings/cyanogenmod/LightLevelsActivity$2;
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
    .line 101
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$2;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$2;->this$0:Lcom/android/settings/cyanogenmod/LightLevelsActivity;

    #calls: Lcom/android/settings/cyanogenmod/LightLevelsActivity;->dialogOk()V
    invoke-static {v0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->access$000(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V

    .line 104
    return-void
.end method
