.class Lcom/instagram/android/service/ClickManager$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Lcom/instagram/android/listener/UserLinkClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/ClickManager;


# direct methods
.method constructor <init>(Lcom/instagram/android/service/ClickManager;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/instagram/android/service/ClickManager$1;->this$0:Lcom/instagram/android/service/ClickManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/instagram/android/model/User;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager$1;->this$0:Lcom/instagram/android/service/ClickManager;

    #getter for: Lcom/instagram/android/service/ClickManager;->mUserLinkClickListener:Lcom/instagram/android/listener/UserLinkClickListener;
    invoke-static {v0}, Lcom/instagram/android/service/ClickManager;->access$000(Lcom/instagram/android/service/ClickManager;)Lcom/instagram/android/listener/UserLinkClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/instagram/android/service/ClickManager$1;->this$0:Lcom/instagram/android/service/ClickManager;

    #getter for: Lcom/instagram/android/service/ClickManager;->mUserLinkClickListener:Lcom/instagram/android/listener/UserLinkClickListener;
    invoke-static {v0}, Lcom/instagram/android/service/ClickManager;->access$000(Lcom/instagram/android/service/ClickManager;)Lcom/instagram/android/listener/UserLinkClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instagram/android/listener/UserLinkClickListener;->onClick(Lcom/instagram/android/model/User;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "ClickManager"

    const-string v1, "Link clicked without any listener"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
