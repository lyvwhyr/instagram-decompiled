.class Lcom/instagram/android/model/Media$2;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "Media.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/model/Media;

.field final synthetic val$finalCommentToDraw:Lcom/instagram/android/model/Comment;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Media;Lcom/instagram/android/model/Comment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/instagram/android/model/Media$2;->this$0:Lcom/instagram/android/model/Media;

    iput-object p2, p0, Lcom/instagram/android/model/Media$2;->val$finalCommentToDraw:Lcom/instagram/android/model/Comment;

    invoke-direct {p0}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 960
    new-instance v0, Lcom/instagram/util/FragmentNavigator;

    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    iget-object v1, p0, Lcom/instagram/android/model/Media$2;->val$finalCommentToDraw:Lcom/instagram/android/model/Comment;

    invoke-virtual {v1}, Lcom/instagram/android/model/Comment;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/util/FragmentNavigator;->toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 963
    return-void
.end method
