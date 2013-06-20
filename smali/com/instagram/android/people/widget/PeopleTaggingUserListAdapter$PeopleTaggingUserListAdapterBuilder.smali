.class public Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;
.super Ljava/lang/Object;
.source "PeopleTaggingUserListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoaderManager:Landroid/support/v4/app/af;

.field private mPeopleTagCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

.field private mShowExtraDisplayName:Z

.field private mShowFollowButtons:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;
    .locals 7

    .prologue
    .line 59
    new-instance v0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    iget-object v1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mLoaderManager:Landroid/support/v4/app/af;

    iget-boolean v3, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mShowFollowButtons:Z

    iget-boolean v4, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mShowExtraDisplayName:Z

    iget-object v5, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mPeopleTagCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ZZLcom/instagram/android/people/model/PeopleTagCollection;Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$1;)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mContext:Landroid/content/Context;

    .line 40
    return-object p0
.end method

.method public setLoaderManager(Landroid/support/v4/app/af;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;
    .locals 0
    .parameter "loaderManager"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mLoaderManager:Landroid/support/v4/app/af;

    .line 45
    return-object p0
.end method

.method public setPeopleTagCollection(Lcom/instagram/android/people/model/PeopleTagCollection;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;
    .locals 0
    .parameter "peopleTagCollection"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mPeopleTagCollection:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 35
    return-object p0
.end method

.method public showExtraDisplayName(Z)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;
    .locals 0
    .parameter "showExtraDisplayName"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mShowExtraDisplayName:Z

    .line 50
    return-object p0
.end method

.method public showFollowButtons(Z)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;
    .locals 0
    .parameter "showFollowButtons"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter$PeopleTaggingUserListAdapterBuilder;->mShowFollowButtons:Z

    .line 55
    return-object p0
.end method
