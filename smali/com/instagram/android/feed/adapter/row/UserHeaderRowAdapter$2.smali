.class final Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$holder:Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;->val$holder:Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;->val$holder:Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;

    iget-object v0, v0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 88
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;->val$holder:Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->gridSwitchButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$2;->val$holder:Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$Holder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 90
    return-void
.end method
