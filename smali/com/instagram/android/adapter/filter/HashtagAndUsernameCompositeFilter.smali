.class public Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;
.super Landroid/widget/Filter;
.source "HashtagAndUsernameCompositeFilter.java"


# instance fields
.field private mAdapter:Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

.field private mHashtagAutoCompleteFilter:Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;

.field private mUsernameAutoCompleteFilter:Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;


# direct methods
.method public constructor <init>(Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mAdapter:Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    .line 27
    new-instance v0, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;

    invoke-direct {v0}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mHashtagAutoCompleteFilter:Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;

    .line 28
    new-instance v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;

    invoke-direct {v0}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mUsernameAutoCompleteFilter:Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;Lcom/instagram/android/model/Media;)V
    .locals 1
    .parameter "adapter"
    .parameter "media"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mAdapter:Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    .line 21
    new-instance v0, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;

    invoke-direct {v0}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mHashtagAutoCompleteFilter:Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;

    .line 22
    new-instance v0, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;

    invoke-direct {v0, p2}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;-><init>(Lcom/instagram/android/model/Media;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mUsernameAutoCompleteFilter:Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;

    .line 23
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .parameter "constraint"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 34
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mHashtagAutoCompleteFilter:Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/filter/HashtagAutoCompleteFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mUsernameAutoCompleteFilter:Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/adapter/filter/UsernameAutoCompleteFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mAdapter:Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 50
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mAdapter:Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;->mAdapter:Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    invoke-virtual {v0}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
