.class final Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$2;
.super Ljava/lang/Object;
.source "MediaSetRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$media:Lcom/instagram/android/model/MinimialMedia;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/MinimialMedia;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$2;->val$media:Lcom/instagram/android/model/MinimialMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    new-instance v1, Lcom/instagram/util/FragmentNavigator;

    invoke-direct {v1, v0}, Lcom/instagram/util/FragmentNavigator;-><init>(Landroid/support/v4/app/p;)V

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$2;->val$media:Lcom/instagram/android/model/MinimialMedia;

    invoke-interface {v0}, Lcom/instagram/android/model/MinimialMedia;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/util/FragmentNavigator;->toMedia(Ljava/lang/String;)Lcom/instagram/util/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/util/FragmentNavigator;->go()V

    .line 130
    :cond_0
    return-void
.end method
