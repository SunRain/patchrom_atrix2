.class public Lcom/android/providers/contacts/TransactionContext;
.super Ljava/lang/Object;
.source "TransactionContext.java"


# instance fields
.field private mDirtyRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mForProfile:Z

.field private mInsertedRawContactsAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedSyncStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "forProfile"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/android/providers/contacts/TransactionContext;->mForProfile:Z

    .line 44
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/providers/contacts/TransactionContext;->clearExceptSearchIndexUpdates()V

    .line 134
    invoke-virtual {p0}, Lcom/android/providers/contacts/TransactionContext;->clearSearchIndexUpdates()V

    .line 135
    return-void
.end method

.method public clearExceptSearchIndexUpdates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 122
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 123
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 124
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 125
    return-void
.end method

.method public clearSearchIndexUpdates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 129
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 130
    return-void
.end method

.method public getAccountIdOrNullForRawContact(J)Ljava/lang/Long;
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getDirtyRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getInsertedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStaleSearchIndexContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getStaleSearchIndexRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUpdatedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUpdatedSyncStates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSearchIndexForContact(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public invalidateSearchIndexForRawContact(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public isNewRawContact(J)Z
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markRawContactDirty(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public rawContactInserted(JJ)V
    .locals 3
    .parameter "rawContactId"
    .parameter "accountId"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public rawContactUpdated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public syncStateUpdated(JLjava/lang/Object;)V
    .locals 2
    .parameter "rowId"
    .parameter "data"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
