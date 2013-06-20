.class Lcom/instagram/android/model/User$1;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "User.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/model/User;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/instagram/android/model/User$1;->this$0:Lcom/instagram/android/model/User;

    invoke-direct {p0}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 88
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getUserLinkClickListener()Lcom/instagram/android/listener/UserLinkClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/model/User$1;->this$0:Lcom/instagram/android/model/User;

    invoke-interface {v0, v1}, Lcom/instagram/android/listener/UserLinkClickListener;->onClick(Lcom/instagram/android/model/User;)V

    .line 89
    return-void
.end method
