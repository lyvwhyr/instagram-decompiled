.class public Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter;
.super Ljava/lang/Object;
.source "AutoCompleteUserRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "holder"
    .parameter "user"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_autocomplete_user:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;-><init>()V

    .line 31
    sget v0, Lcom/facebook/g;->row_user_fullname:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;->fullname:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/facebook/g;->row_user_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;->username:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    return-object v1
.end method
