.class Lcom/instagram/android/fragment/UserListFragment$6$1;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserListFragment$6;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment$6;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iput-object p2, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 301
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->row_find_friends_footer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->button_find_friends_footer_follow_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->getFollowAllOnClickListener()Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/instagram/android/fragment/UserListFragment;->access$800(Lcom/instagram/android/fragment/UserListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v0, v0, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/UserListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/g;->label_find_friends_footer_num_users:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    if-eqz v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    #calls: Lcom/instagram/android/fragment/UserListFragment;->isContactsList()Z
    invoke-static {v1}, Lcom/instagram/android/fragment/UserListFragment;->access$1700(Lcom/instagram/android/fragment/UserListFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 312
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v2, Lcom/facebook/k;->found_1_contact:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/UserListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_1
    return-void

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v2, Lcom/facebook/k;->found_x_contacts:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/fragment/UserListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 318
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v2, Lcom/facebook/k;->found_1_friend:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/UserListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->this$1:Lcom/instagram/android/fragment/UserListFragment$6;

    iget-object v1, v1, Lcom/instagram/android/fragment/UserListFragment$6;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    sget v2, Lcom/facebook/k;->found_x_friends:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/instagram/android/fragment/UserListFragment$6$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/instagram/android/fragment/UserListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
