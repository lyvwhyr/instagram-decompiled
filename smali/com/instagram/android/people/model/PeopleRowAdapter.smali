.class public Lcom/instagram/android/people/model/PeopleRowAdapter;
.super Lcom/instagram/android/adapter/row/UserRowAdapter;
.source "PeopleRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/adapter/row/UserRowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;Lcom/instagram/android/model/User;ZZLandroid/support/v4/app/af;)V
    .locals 2
    .parameter "holder"
    .parameter "user"
    .parameter "showFollowButton"
    .parameter "showExtraDisplayName"
    .parameter "loaderManager"

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/adapter/row/UserRowAdapter;->bindView(Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;Lcom/instagram/android/model/User;ZZLandroid/support/v4/app/af;)V

    .line 29
    invoke-virtual {p2}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/UserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected inflateLayout(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_user_dark:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
