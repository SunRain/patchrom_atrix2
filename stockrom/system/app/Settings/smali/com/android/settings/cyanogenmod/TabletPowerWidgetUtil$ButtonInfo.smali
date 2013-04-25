.class public Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;
.super Ljava/lang/Object;
.source "TabletPowerWidgetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mIcon:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "titleResId"
    .parameter "icon"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;->mId:Ljava/lang/String;

    .line 135
    iput p2, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;->mTitleResId:I

    .line 136
    iput-object p3, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;->mIcon:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;->mTitleResId:I

    return v0
.end method
