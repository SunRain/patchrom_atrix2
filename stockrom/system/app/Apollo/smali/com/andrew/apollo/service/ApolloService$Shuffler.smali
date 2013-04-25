.class Lcom/andrew/apollo/service/ApolloService$Shuffler;
.super Ljava/lang/Object;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/service/ApolloService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shuffler"
.end annotation


# instance fields
.field private mPrevious:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1704
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/service/ApolloService$Shuffler;->mRandom:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Lcom/andrew/apollo/service/ApolloService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1701
    invoke-direct {p0}, Lcom/andrew/apollo/service/ApolloService$Shuffler;-><init>()V

    return-void
.end method


# virtual methods
.method public nextInt(I)I
    .locals 2
    .parameter "interval"

    .prologue
    .line 1709
    :cond_0
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$Shuffler;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1710
    .local v0, ret:I
    iget v1, p0, Lcom/andrew/apollo/service/ApolloService$Shuffler;->mPrevious:I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 1711
    :cond_1
    iput v0, p0, Lcom/andrew/apollo/service/ApolloService$Shuffler;->mPrevious:I

    .line 1712
    return v0
.end method
