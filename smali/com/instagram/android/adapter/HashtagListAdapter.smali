.class public Lcom/instagram/android/adapter/HashtagListAdapter;
.super Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;
.source "HashtagListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/adapter/NoResultsEnhancedAdapter",
        "<",
        "Lcom/instagram/android/model/Hashtag;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mFilter:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 2
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/HashtagRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/HashtagListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Hashtag;

    invoke-static {v0, v1, p2}, Lcom/instagram/android/adapter/row/HashtagRowAdapter;->bindView(Lcom/instagram/android/adapter/row/HashtagRowAdapter$Holder;Lcom/instagram/android/model/Hashtag;Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/android/adapter/HashtagListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/instagram/android/adapter/HashtagListAdapter$HashtagSearchFilter;

    invoke-direct {v0, p0}, Lcom/instagram/android/adapter/HashtagListAdapter$HashtagSearchFilter;-><init>(Lcom/instagram/android/adapter/HashtagListAdapter;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/HashtagListAdapter;->mFilter:Landroid/widget/Filter;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/HashtagListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method protected getNoResultsView()Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/instagram/android/adapter/HashtagListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    sget v0, Lcom/facebook/g;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/k;->no_tags_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 34
    invoke-static {p1}, Lcom/instagram/android/adapter/row/HashtagRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
