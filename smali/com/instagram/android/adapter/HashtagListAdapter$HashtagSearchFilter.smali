.class Lcom/instagram/android/adapter/HashtagListAdapter$HashtagSearchFilter;
.super Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;
.source "HashtagListAdapter.java"


# instance fields
.field private final mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;


# direct methods
.method public constructor <init>(Lcom/instagram/android/adapter/HashtagListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/instagram/android/adapter/HashtagListAdapter$HashtagSearchFilter;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    .line 63
    return-void
.end method

.method private convertResults(Landroid/widget/Filter$FilterResults;)Ljava/util/ArrayList;
    .locals 4
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Filter$FilterResults;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/Hashtag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    new-instance v3, Lcom/instagram/android/model/Hashtag;

    invoke-direct {v3, v0}, Lcom/instagram/android/model/Hashtag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "text"

    .prologue
    .line 67
    invoke-static {p1}, Lcom/instagram/util/StringUtil;->getCleanText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getRecentHashtagSearches()Ljava/util/List;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 76
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v1

    .line 80
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 85
    if-nez p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/HashtagListAdapter$HashtagSearchFilter;->mAdapter:Lcom/instagram/android/adapter/HashtagListAdapter;

    invoke-direct {p0, p2}, Lcom/instagram/android/adapter/HashtagListAdapter$HashtagSearchFilter;->convertResults(Landroid/widget/Filter$FilterResults;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/HashtagListAdapter;->setFilteredItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
