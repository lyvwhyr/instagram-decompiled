.class public Lcom/instagram/android/people/activity/PeopleTagActivity;
.super Lcom/instagram/android/fragment/IgFragmentActivity;
.source "PeopleTagActivity.java"

# interfaces
.implements Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$PeopleTagSearchFragmentListener;


# static fields
.field public static final ARGUMENT_MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final ARGUMENT_MEDIA_URL:Ljava/lang/String; = "media_url"

.field public static final ARGUMENT_PEOPLE_TAGS:Ljava/lang/String; = "people_tags"


# instance fields
.field private mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPeopleTags()Lcom/instagram/android/people/model/PeopleTagCollection;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    const-string v1, "people_tags"

    iget-object v2, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragmentActivity;->onBackPressed()V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_1

    .line 45
    const-string v0, "people_tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v1, v0}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    .line 60
    :goto_0
    sget v0, Lcom/facebook/h;->activity_capture:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->setContentView(I)V

    .line 62
    new-instance v0, Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-direct {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    .line 66
    sget v2, Lcom/facebook/g;->layout_container_main:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 67
    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/p;->a()Landroid/support/v4/app/ac;

    move-result-object v1

    .line 69
    sget v2, Lcom/facebook/g;->layout_container_main:I

    const-string v3, "PeopleTagFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ac;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ac;

    .line 70
    invoke-virtual {v1}, Landroid/support/v4/app/ac;->a()I

    .line 72
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "people_tags"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 54
    new-instance v0, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-direct {v1, v0}, Lcom/instagram/android/people/model/PeopleTagCollection;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    goto :goto_0
.end method

.method public onPeopleTagSearchCancel()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "PeopleTagFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/fragment/PeopleTagFragment;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->cancelEdit()V

    .line 96
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "people_tags"

    iget-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->mPeopleTags:Lcom/instagram/android/people/model/PeopleTagCollection;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method

.method public onUserSelected(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getSupportFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "PeopleTagFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/fragment/PeopleTagFragment;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->addTag(Lcom/instagram/android/model/User;)V

    .line 87
    :cond_0
    return-void
.end method
