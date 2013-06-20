.class public abstract Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "NoResultsEnhancedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/android/adapter/EnhancedArrayAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_DEFAULT:I = 0x0

.field private static final ITEM_VIEW_TYPE_NO_RESULTS:I = 0x1

.field public static final TYPE_COUNT:I = 0x2


# instance fields
.field protected mIsLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mIsLoaded:Z

    .line 21
    return-void
.end method


# virtual methods
.method public appendItemsWithFilteringOfPreviousItems(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mIsLoaded:Z

    .line 106
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mIsLoaded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mIsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getNoResultsView()Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 48
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->getNoResultsView()Landroid/view/View;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setFilteredItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mIsLoaded:Z

    .line 91
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;,"Lcom/instagram/android/adapter/NoResultsEnhancedAdapter<TT;>;"
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->mIsLoaded:Z

    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NoResultsEnhancedAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method
