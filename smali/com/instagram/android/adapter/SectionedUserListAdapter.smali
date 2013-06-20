.class public Lcom/instagram/android/adapter/SectionedUserListAdapter;
.super Lcom/instagram/android/adapter/UserListAdapter;
.source "SectionedUserListAdapter.java"


# static fields
.field private static final ITEM_TYPE_HEADING:I = 0x1

.field private static final ITEM_TYPE_NO_RESULTS:I = 0x2

.field private static final ITEM_TYPE_USER_ROW:I = 0x0

.field private static final NUM_VIEW_TYPES:I = 0x3


# instance fields
.field protected listObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "showFollowButtons"
    .parameter "showExtraDisplayName"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/android/adapter/UserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZ)V

    .line 32
    iput-object p1, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private getSectionedViews()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    .line 127
    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getFollowStatus()Lcom/instagram/android/model/User$FollowStatus;

    move-result-object v6

    .line 128
    sget-object v7, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v6, v7, :cond_1

    .line 129
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_1
    sget-object v7, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusRequested:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v6, v7, :cond_2

    .line 131
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    sget-object v7, Lcom/instagram/android/model/User$FollowStatus;->FollowStatusNotFollowing:Lcom/instagram/android/model/User$FollowStatus;

    if-ne v6, v7, :cond_0

    .line 133
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 137
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 140
    new-instance v0, Lcom/instagram/android/model/Heading;

    iget-object v3, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mContext:Landroid/content/Context;

    sget v5, Lcom/facebook/k;->following_button_following:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/instagram/android/model/Heading;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 144
    new-instance v0, Lcom/instagram/android/model/Heading;

    iget-object v2, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/facebook/k;->following_button_requested:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/instagram/android/model/Heading;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_6
    return-object v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 2
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 92
    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type unhandled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getListObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    invoke-super {p0, p1, p2, v0}, Lcom/instagram/android/adapter/UserListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/instagram/android/model/User;)V

    .line 105
    :goto_0
    :pswitch_1
    return-void

    .line 97
    :pswitch_2
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getListObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Heading;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/adapter/HeadingAdapter$Holder;

    invoke-static {v1, v0}, Lcom/instagram/android/adapter/HeadingAdapter;->bindView(Lcom/instagram/android/adapter/HeadingAdapter$Holder;Lcom/instagram/android/model/Heading;)V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getListObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mIsLoaded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mIsLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getObjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x2

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getListObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lcom/instagram/android/model/User;

    if-eqz v1, :cond_1

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    instance-of v0, v0, Lcom/instagram/android/model/Heading;

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "model not handled (for item view type)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListObjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->listObjects:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getSectionedViews()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->listObjects:Ljava/util/ArrayList;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->listObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p3}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p1}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    .line 52
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 78
    invoke-virtual {p0, p2}, Lcom/instagram/android/adapter/SectionedUserListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->mContext:Landroid/content/Context;

    invoke-super {p0, v0, p2, p3}, Lcom/instagram/android/adapter/UserListAdapter;->newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :pswitch_1
    invoke-static {p1}, Lcom/instagram/android/adapter/HeadingAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-super {p0}, Lcom/instagram/android/adapter/UserListAdapter;->getNoResultsView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;"
    invoke-super {p0, p1}, Lcom/instagram/android/adapter/UserListAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/adapter/SectionedUserListAdapter;->listObjects:Ljava/util/ArrayList;

    .line 111
    return-void
.end method
