.class Lcom/instagram/android/service/ActionBarService$1;
.super Ljava/lang/Object;
.source "ActionBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/ActionBarService;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/instagram/android/service/ActionBarService;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/service/ActionBarService$1;->this$0:Lcom/instagram/android/service/ActionBarService;

    iput-object p2, p0, Lcom/instagram/android/service/ActionBarService$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/service/ActionBarService$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.android.service.action_bar_clicked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->b(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
