.class public Lcom/instagram/android/people/widget/PeopleTagSearchFilter;
.super Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;
.source "PeopleTagSearchFilter.java"


# instance fields
.field private final mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

.field private final mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

.field private final mPredicate:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;Lcom/instagram/android/people/model/PeopleTagCollection;)V
    .locals 1
    .parameter "adapter"
    .parameter "collection"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    .line 31
    iput-object p2, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 32
    new-instance v0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/widget/PeopleTagSearchFilter$1;-><init>(Lcom/instagram/android/people/widget/PeopleTagSearchFilter;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mPredicate:Lcom/android/internal/util/Predicate;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/people/widget/PeopleTagSearchFilter;)Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

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
    .line 43
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Lcom/instagram/android/model/User;>;"
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mPredicate:Lcom/android/internal/util/Predicate;

    invoke-super {p0, p1, v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->computeMatchingUserAutoCompleteSet(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;

    move-result-object v0

    .line 47
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instagram/android/model/User;

    const/4 v2, 0x0

    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mPredicate:Lcom/android/internal/util/Predicate;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->addToMatchingUsernameSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 49
    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mPredicate:Lcom/android/internal/util/Predicate;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->addToMatchingFullnameConcatSetFromCollection(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    .line 51
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->setFilteredItems(Ljava/util/ArrayList;)V

    .line 59
    :cond_0
    return-void
.end method
