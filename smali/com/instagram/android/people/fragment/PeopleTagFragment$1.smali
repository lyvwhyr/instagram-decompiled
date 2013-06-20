.class Lcom/instagram/android/people/fragment/PeopleTagFragment$1;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$PeopleTagsEditListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagEditingFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    const-string v1, "PeopleTagSearch"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/p;->b(Ljava/lang/String;I)Z

    .line 95
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #setter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mShouldShowTagsHelpText:Z
    invoke-static {v0, v2}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$102(Lcom/instagram/android/people/fragment/PeopleTagFragment;Z)Z

    .line 96
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagFragment;->updateTagsHelpText()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$200(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    .line 97
    return-void
.end method

.method public onTagEditingResume(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$000(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$000(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->setScrollTarget(F)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mShouldShowTagsHelpText:Z
    invoke-static {v0, v1}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$102(Lcom/instagram/android/people/fragment/PeopleTagFragment;Z)Z

    .line 74
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagFragment;->updateTagsHelpText()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$200(Lcom/instagram/android/people/fragment/PeopleTagFragment;)V

    .line 75
    return-void
.end method

.method public onTagEditingStart()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    invoke-virtual {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->run(Landroid/support/v4/app/p;)V

    .line 80
    return-void
.end method

.method public onTagLocationUpdate(Landroid/graphics/PointF;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$000(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagFragment;->mScrollView:Lcom/instagram/android/people/widget/PhotoScrollView;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagFragment;->access$000(Lcom/instagram/android/people/fragment/PeopleTagFragment;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->setScrollTarget(F)V

    .line 87
    :cond_0
    return-void
.end method
