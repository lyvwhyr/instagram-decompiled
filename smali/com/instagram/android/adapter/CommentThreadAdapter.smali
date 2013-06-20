.class public Lcom/instagram/android/adapter/CommentThreadAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "CommentThreadAdapter.java"


# static fields
.field private static final ITEM_COMMENT:I = 0x0

.field private static final ITEM_LOAD_ALL:I = 0x1

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

.field private mMedia:Lcom/instagram/android/model/Media;

.field private mShowLoadAllCommentsButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 1
    .parameter "context"
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mShowLoadAllCommentsButton:Z

    .line 42
    iput-object p2, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p3, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    .line 44
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 4
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 68
    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/CommentThreadAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/CommentThreadAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/Comment;

    iget-object v2, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->bindView(Lcom/instagram/android/adapter/row/CommentRowAdapter$Holder;Lcom/instagram/android/model/Comment;Landroid/app/Activity;Lcom/instagram/android/fragment/CommentThreadFragment;)V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;

    iget-object v1, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mFragment:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter;->bindView(Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter$Holder;Lcom/instagram/android/widget/LoadMoreButton$LoadMoreInterface;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mShowLoadAllCommentsButton:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mShowLoadAllCommentsButton:Z

    if-eqz v0, :cond_0

    .line 49
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 126
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mShowLoadAllCommentsButton:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x2

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 56
    invoke-virtual {p0, p2}, Lcom/instagram/android/adapter/CommentThreadAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No item view type found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    invoke-static {p1, p3}, Lcom/instagram/android/adapter/row/CommentRowAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1, p3}, Lcom/instagram/android/feed/adapter/row/LoadMoreRowAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->clearCommentArrayCaches()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;->notifyDataSetInvalidated()V

    .line 112
    return-void
.end method

.method public setMedia(Lcom/instagram/android/model/Media;)V
    .locals 2
    .parameter "media"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mMedia:Lcom/instagram/android/model/Media;

    .line 85
    invoke-virtual {p1}, Lcom/instagram/android/model/Media;->hasMoreComments()Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mShowLoadAllCommentsButton:Z

    .line 86
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0}, Lcom/instagram/android/model/Media;->getActiveComments()Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/instagram/android/adapter/CommentThreadAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/adapter/CommentThreadAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
