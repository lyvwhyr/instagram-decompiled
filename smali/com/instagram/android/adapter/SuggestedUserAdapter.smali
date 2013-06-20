.class public Lcom/instagram/android/adapter/SuggestedUserAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "SuggestedUserAdapter.java"


# instance fields
.field private mCanNavigateToUserProfiles:Z

.field private mFragmentManager:Landroid/support/v4/app/p;

.field private mLoaderManager:Landroid/support/v4/app/af;

.field private mSuggestedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/af;Landroid/support/v4/app/p;Z)V
    .locals 0
    .parameter "context"
    .parameter "loaderManager"
    .parameter "fragmentManager"
    .parameter "canNavigateToUserProfiles"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    .line 29
    iput-boolean p4, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mCanNavigateToUserProfiles:Z

    .line 30
    iput-object p3, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    .line 31
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 8
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/SuggestedUser;

    invoke-virtual {p0}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mCanNavigateToUserProfiles:Z

    iget-object v7, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    move-object v3, p0

    invoke-static/range {v0 .. v7}, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter;->bindView(Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;Lcom/instagram/android/model/SuggestedUser;Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/support/v4/app/p;ZZLandroid/support/v4/app/af;)V

    .line 45
    return-void
.end method

.method public getSuggestedUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mSuggestedUsers:Ljava/util/List;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 35
    invoke-static {p1}, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setSuggestedUsers(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/model/SuggestedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, responseObject:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/instagram/android/model/SuggestedUser;>;"
    iput-object p1, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mSuggestedUsers:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    iget-object v0, p0, Lcom/instagram/android/adapter/SuggestedUserAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SuggestedUserAdapter;->notifyDataSetChanged()V

    .line 56
    return-void
.end method
