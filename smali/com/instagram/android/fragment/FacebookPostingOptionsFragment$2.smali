.class Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$2;
.super Ljava/lang/Object;
.source "FacebookPostingOptionsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 96
    sget v0, Lcom/facebook/g;->fragment_facebook_posting_options_default_button:I

    if-ne p2, v0, :cond_1

    .line 97
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->clearPageToken()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mAccounts:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment$2;->this$0:Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;

    #getter for: Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->mAccounts:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;->access$100(Lcom/instagram/android/fragment/FacebookPostingOptionsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/FacebookPostingAccount;

    invoke-static {v0}, Lcom/instagram/facebook/FacebookAccount;->setPageToken(Lcom/instagram/android/model/FacebookPostingAccount;)V

    goto :goto_0
.end method
