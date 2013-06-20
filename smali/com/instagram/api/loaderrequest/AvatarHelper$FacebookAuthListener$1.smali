.class Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener$1;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener$1;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener$1;->this$1:Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;

    iget-object v0, v0, Lcom/instagram/api/loaderrequest/AvatarHelper$FacebookAuthListener;->this$0:Lcom/instagram/api/loaderrequest/AvatarHelper;

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/AvatarHelper;->loadFacebookProfilePicture()V

    .line 288
    return-void
.end method
