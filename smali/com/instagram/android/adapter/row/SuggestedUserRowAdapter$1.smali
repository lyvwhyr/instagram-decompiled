.class final Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;
.super Ljava/lang/Object;
.source "SuggestedUserRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$fragmentManager:Landroid/support/v4/app/p;

.field final synthetic val$user:Lcom/instagram/android/model/SuggestedUser;


# direct methods
.method constructor <init>(Landroid/support/v4/app/p;Lcom/instagram/android/model/SuggestedUser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;->val$fragmentManager:Landroid/support/v4/app/p;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;->val$user:Lcom/instagram/android/model/SuggestedUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 63
    new-instance v0, Lcom/instagram/util/FragmentNavigator;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-direct {v0, v1}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    iget-object v1, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$1;->val$user:Lcom/instagram/android/model/SuggestedUser;

    invoke-virtual {v1}, Lcom/instagram/android/model/SuggestedUser;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/util/FragmentNavigator;->toProfile(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 64
    return-void
.end method
