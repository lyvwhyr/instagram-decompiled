.class Lcom/instagram/android/people/fragment/UserTagOptionsFragment$2;
.super Ljava/lang/Object;
.source "UserTagOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$2;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$2;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    #getter for: Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->mAddManuallyCheckbox:Lcom/instagram/android/widget/IndeterminateCheckBox;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->access$200(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/people/fragment/UserTagOptionsFragment$2;->this$0:Lcom/instagram/android/people/fragment/UserTagOptionsFragment;

    sget-object v1, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;->REVIEW_ENABLED:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;

    sget-object v2, Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;->KEEP_TAGS:Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;

    #calls: Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->setReviewState(Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;)V
    invoke-static {v0, v1, v2}, Lcom/instagram/android/people/fragment/UserTagOptionsFragment;->access$100(Lcom/instagram/android/people/fragment/UserTagOptionsFragment;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$ReviewState;Lcom/instagram/api/loaderrequest/PeopleTagReviewRequest$TagAction;)V

    .line 73
    :cond_0
    return-void
.end method
