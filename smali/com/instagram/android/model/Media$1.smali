.class Lcom/instagram/android/model/Media$1;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "Media.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/instagram/android/model/Media$1;->this$0:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "widget"

    .prologue
    const/4 v5, 0x0

    .line 800
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 801
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FETCH_URL"

    const-string v2, "media/%s/likers/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/model/Media$1;->this$0:Lcom/instagram/android/model/Media;

    invoke-virtual {v4}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_TITLE"

    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/facebook/k;->likers_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v1, "com.instagram.android.fragment.UserListFragment.ARGUMENTS_FOLLOW_BUTTONS"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 804
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/fragment/UserListFragment;

    invoke-direct {v2}, Lcom/instagram/android/fragment/UserListFragment;-><init>()V

    invoke-static {v1, v2, v0}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 805
    return-void
.end method
