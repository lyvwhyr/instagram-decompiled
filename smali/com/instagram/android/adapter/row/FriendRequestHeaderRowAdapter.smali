.class public Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter;
.super Ljava/lang/Object;
.source "FriendRequestHeaderRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;Lcom/instagram/android/model/User;Landroid/content/Context;Landroid/support/v4/app/af;)V
    .locals 5
    .parameter "holder"
    .parameter "user"
    .parameter "context"
    .parameter "loaderManager"

    .prologue
    const/4 v1, 0x0

    .line 31
    #getter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->self:Landroid/view/View;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$300(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->isIncomingRequestPending()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    #getter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->textview:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$000(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/facebook/k;->x_wants_to_follow_you:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    #getter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->approve:Landroid/view/View;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$100(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;

    invoke-direct {v1, p3, p1, p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$1;-><init>(Landroid/support/v4/app/af;Lcom/instagram/android/model/User;Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    #getter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->ignore:Landroid/view/View;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$200(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$2;

    invoke-direct {v1, p3, p1, p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$2;-><init>(Landroid/support/v4/app/af;Lcom/instagram/android/model/User;Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void

    .line 31
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static createHolderForView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "view"

    .prologue
    .line 19
    new-instance v1, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;

    invoke-direct {v1}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;-><init>()V

    .line 20
    sget v0, Lcom/facebook/g;->row_friend_request_header_textview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->textview:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$002(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 21
    sget v0, Lcom/facebook/g;->row_friend_request_header_button_approve:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #setter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->approve:Landroid/view/View;
    invoke-static {v1, v0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$102(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;Landroid/view/View;)Landroid/view/View;

    .line 22
    sget v0, Lcom/facebook/g;->row_friend_request_header_button_ignore:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #setter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->ignore:Landroid/view/View;
    invoke-static {v1, v0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$202(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;Landroid/view/View;)Landroid/view/View;

    .line 23
    #setter for: Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->self:Landroid/view/View;
    invoke-static {v1, p0}, Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;->access$302(Lcom/instagram/android/adapter/row/FriendRequestHeaderRowAdapter$Holder;Landroid/view/View;)Landroid/view/View;

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    return-object p0
.end method
