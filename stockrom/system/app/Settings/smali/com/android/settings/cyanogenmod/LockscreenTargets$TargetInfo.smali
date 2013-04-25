.class Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/LockscreenTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TargetInfo"
.end annotation


# instance fields
.field defaultIcon:Landroid/graphics/drawable/Drawable;

.field icon:Landroid/graphics/drawable/StateListDrawable;

.field iconSource:Ljava/lang/String;

.field iconType:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "in"
    .parameter "target"
    .parameter "iType"
    .parameter "iSource"
    .parameter "dI"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->this$0:Lcom/android/settings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 97
    iput-object p6, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object p4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 100
    return-void
.end method
