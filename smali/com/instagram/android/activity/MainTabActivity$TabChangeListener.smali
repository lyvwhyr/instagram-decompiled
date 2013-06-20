.class Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method private constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/MainTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$1400(Lcom/instagram/android/activity/MainTabActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarNewsNotification:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$300(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$1400(Lcom/instagram/android/activity/MainTabActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->PROFILE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mTabBarProfileNotification:Landroid/view/View;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$700(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1400(Lcom/instagram/android/activity/MainTabActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/instagram/android/activity/MainTabActivity;->popToRoot(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1200(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)V

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->removingLink:Z
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$100(Lcom/instagram/android/activity/MainTabActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$000(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mBackTabList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->access$000(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #getter for: Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->access$1400(Lcom/instagram/android/activity/MainTabActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/activity/MainTabActivity$TabChangeListener;->this$0:Lcom/instagram/android/activity/MainTabActivity;

    #setter for: Lcom/instagram/android/activity/MainTabActivity;->mOldTabTag:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->access$1402(Lcom/instagram/android/activity/MainTabActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    return-void
.end method
