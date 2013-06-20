.class Lcom/instagram/android/model/Comment$2;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "Comment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/model/Comment;

.field final synthetic val$matchingText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Comment;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/instagram/android/model/Comment$2;->this$0:Lcom/instagram/android/model/Comment;

    iput-object p3, p0, Lcom/instagram/android/model/Comment$2;->val$matchingText:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "widget"

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/instagram/android/model/Comment;->BROADCAST_HASH_TAG_CLICKED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/instagram/android/model/Comment;->BROADCAST_HASH_TAG_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/model/Comment$2;->val$matchingText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/e;->a(Landroid/content/Intent;)Z

    .line 210
    return-void
.end method
