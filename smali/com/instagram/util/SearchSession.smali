.class public Lcom/instagram/util/SearchSession;
.super Ljava/lang/Object;
.source "SearchSession.java"


# instance fields
.field private mAnySearchWasSuccessful:Z

.field private mLastSearchWasSuccessful:Z

.field private mSearchHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public anySearchWasSuccessful()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/instagram/util/SearchSession;->mAnySearchWasSuccessful:Z

    return v0
.end method

.method public getAllQueries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentSearchQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    :cond_0
    return-object v0
.end method

.method public getNumSearches()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPreviousSearchQuery()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    :cond_0
    return-object v0
.end method

.method public isFailedSearchSession()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/util/SearchSession;->mAnySearchWasSuccessful:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastSearchWasSuccessful()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/instagram/util/SearchSession;->mLastSearchWasSuccessful:Z

    return v0
.end method

.method public reportHashtagSearchFailure()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signals/sq/tags/fail/?"

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/instagram/util/SearchSession;->toQueryString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportHashtagSearchSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "hashtag"

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean v2, p0, Lcom/instagram/util/SearchSession;->mLastSearchWasSuccessful:Z

    .line 126
    iput-boolean v2, p0, Lcom/instagram/util/SearchSession;->mAnySearchWasSuccessful:Z

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signals/sq/tags/click/?"

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/instagram/util/SearchSession;->toRequestParams(Z)Lcom/instagram/api/RequestParams;

    move-result-object v1

    .line 130
    const-string v2, "tag"

    invoke-virtual {v1, v2, p1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportUserSearchFailure()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signals/sq/users/fail/?"

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/instagram/util/SearchSession;->toQueryString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportUserSearchSuccess(Lcom/instagram/android/model/User;)V
    .locals 4
    .parameter "u"

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-boolean v2, p0, Lcom/instagram/util/SearchSession;->mLastSearchWasSuccessful:Z

    .line 101
    iput-boolean v2, p0, Lcom/instagram/util/SearchSession;->mAnySearchWasSuccessful:Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "signals/sq/users/follow/?"

    invoke-static {v1}, Lcom/instagram/api/loaderrequest/ApiUrlHelper;->expandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/instagram/util/SearchSession;->toRequestParams(Z)Lcom/instagram/api/RequestParams;

    move-result-object v1

    .line 105
    const-string v2, "u"

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->sendNoopRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iput-boolean v1, p0, Lcom/instagram/util/SearchSession;->mLastSearchWasSuccessful:Z

    .line 52
    iput-boolean v1, p0, Lcom/instagram/util/SearchSession;->mAnySearchWasSuccessful:Z

    .line 53
    return-void
.end method

.method public resetIfLastSearchWasSuccessful()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/instagram/util/SearchSession;->mLastSearchWasSuccessful:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/instagram/util/SearchSession;->reset()V

    .line 59
    :cond_0
    return-void
.end method

.method public toQueryString(Z)Ljava/lang/String;
    .locals 1
    .parameter "includeFullHistory"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/instagram/util/SearchSession;->toRequestParams(Z)Lcom/instagram/api/RequestParams;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/instagram/api/RequestParams;->toQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRequestParams(Z)Lcom/instagram/api/RequestParams;
    .locals 7
    .parameter "includeFullHistory"

    .prologue
    const/4 v2, 0x0

    .line 62
    new-instance v3, Lcom/instagram/api/RequestParams;

    invoke-direct {v3}, Lcom/instagram/api/RequestParams;-><init>()V

    .line 64
    if-eqz p1, :cond_1

    move v1, v2

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    .line 68
    const-string v4, "q"

    invoke-virtual {v3, v4, v0}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_0
    const-string v4, "pq_%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/util/SearchSession;->getCurrentSearchQuery()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/instagram/util/SearchSession;->getPreviousSearchQuery()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v0, :cond_2

    .line 78
    const-string v2, "q"

    invoke-virtual {v3, v2, v0}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    if-eqz v1, :cond_3

    .line 81
    const-string v0, "pq"

    invoke-virtual {v3, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_3
    const-string v0, "npq"

    iget-object v1, p0, Lcom/instagram/util/SearchSession;->mSearchHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-object v3
.end method
