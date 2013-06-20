.class final Lcom/instagram/android/feed/adapter/row/UserHeaderRowAdapter$1;
.super Ljava/lang/Object;
.source "UserHeaderRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 73
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getUpdateAvatarHelper()Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/UpdateAvatarHelper;->showDialog()V

    .line 74
    return-void
.end method
