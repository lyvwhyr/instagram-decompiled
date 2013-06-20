.class Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mMedia:Lcom/instagram/android/model/Media;

.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter "media"

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;->mMedia:Lcom/instagram/android/model/Media;

    .line 1544
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1538
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/model/Media;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1548
    check-cast p1, Lcom/instagram/android/people/widget/PeopleTagView;

    .line 1549
    .end local p1
    invoke-virtual {p1}, Lcom/instagram/android/people/widget/PeopleTagView;->getTaggedUserId()Ljava/lang/String;

    move-result-object v0

    .line 1551
    invoke-static {}, Lcom/instagram/android/service/AuthHelper;->getInstance()Lcom/instagram/android/service/AuthHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/service/AuthHelper;->getCurrentUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mModifyPhotosOfYouHelper:Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$2900(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;->mMedia:Lcom/instagram/android/model/Media;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/helper/ModifyPhotosOfYouHelper;->showPhotosOfYouDialog(Lcom/instagram/android/model/Media;)V

    .line 1556
    :goto_0
    return-void

    .line 1554
    :cond_0
    new-instance v1, Lcom/instagram/util/FragmentNavigator;

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$OnClickTagListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/FeedAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    invoke-direct {v1, v2}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    invoke-virtual {v1, v0}, Lcom/instagram/util/FragmentNavigator;->toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    goto :goto_0
.end method
