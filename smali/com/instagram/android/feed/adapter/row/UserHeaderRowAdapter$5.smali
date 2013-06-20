.class final Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$5;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$fragmentManager:Landroid/support/v4/app/p;


# direct methods
.method constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$5;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$5;->val$fragmentManager:Landroid/support/v4/app/p;

    new-instance v1, Lcom/instagram/android/fragment/EditProfileFragment;

    invoke-direct {v1}, Lcom/instagram/android/fragment/EditProfileFragment;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/util/FragmentUtil;->navigateTo(Landroid/support/v4/app/p;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method
