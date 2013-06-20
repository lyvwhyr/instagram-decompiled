.class public Lcom/instagram/android/adapter/filter/UsernameSearchFilter;
.super Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;
.source "UsernameSearchFilter.java"


# instance fields
.field private final mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

.field private mRecentUserSearches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/adapter/UserListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    .line 24
    return-void
.end method

.method private addToMatchingFullnameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;)V
    .locals 4
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/User;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 84
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method private addToMatchingFullnameSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;)V
    .locals 2
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 76
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingFullnameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;)V

    .line 79
    :cond_0
    return-void
.end method

.method private addToMatchingFullnameSplitSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;)V
    .locals 7
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, list:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/instagram/android/model/User;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 101
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    return-void
.end method

.method private addToMatchingFullnameSplitSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;)V
    .locals 2
    .parameter "text"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, results:Ljava/util/Set;,"Ljava/util/Set<Lcom/instagram/android/model/User;>;"
    .local p3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Character;Ljava/util/HashSet<Lcom/instagram/android/model/User;>;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 93
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingFullnameSplitSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;)V

    .line 96
    :cond_0
    return-void
.end method

.method private getRecentUserSearches(Z)Ljava/util/Collection;
    .locals 1
    .parameter "forceReload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->mRecentUserSearches:Ljava/util/Collection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 114
    :cond_0
    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getRecentUserSearches()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->mRecentUserSearches:Ljava/util/Collection;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->mRecentUserSearches:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method protected computeMatchingUserAutoCompleteSet(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
    .locals 4
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    const/4 v3, 0x0

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->sUsernames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingUsernameSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;Lcom/android/internal/util/Predicate;)V

    .line 59
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->sFullnames:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingFullnameSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;)V

    .line 60
    sget-object v1, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->sFullnames:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingFullnameSplitSetFromMap(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/HashMap;)V

    .line 63
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->getRecentUserSearches(Z)Ljava/util/Collection;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingUsernameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingFullnameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;)V

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->addToMatchingFullnameSplitSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;)V

    .line 70
    :cond_0
    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .parameter "text"

    .prologue
    .line 28
    invoke-static {p1}, Lcom/instagram/util/StringUtil;->getCleanText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->getRecentUserSearches(Z)Ljava/util/Collection;

    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 37
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/adapter/filter/UsernameSearchFilter;->mAdapter:Lcom/instagram/android/adapter/UserListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/UserListAdapter;->setFilteredItems(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
