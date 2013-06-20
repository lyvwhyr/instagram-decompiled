.class Lcom/instagram/android/model/Media$3;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "Media.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/instagram/android/model/Media$3;->this$0:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    .line 982
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/model/Media$3;->this$0:Lcom/instagram/android/model/Media;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/CommentThreadFragment;->show(Landroid/support/v4/app/p;Lcom/instagram/android/model/Media;Z)V

    .line 983
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .parameter "ds"

    .prologue
    .line 976
    invoke-super {p0, p1}, Lcom/instagram/android/widget/ClickableNameSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 977
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/d;->light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 978
    return-void
.end method
