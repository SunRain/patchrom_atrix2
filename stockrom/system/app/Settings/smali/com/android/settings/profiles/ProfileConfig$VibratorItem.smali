.class Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VibratorItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/settings/profiles/VibratorPreference;

.field mLabel:Ljava/lang/String;

.field mSettings:Landroid/app/VibratorSettings;

.field mVibratorId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "vibratorId"
    .parameter "label"

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput p1, p0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mVibratorId:I

    .line 436
    iput-object p2, p0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mLabel:Ljava/lang/String;

    .line 437
    return-void
.end method
