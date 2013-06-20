.class Lcom/instagram/util/ViewUtil$UrlClickNameSpan;
.super Lcom/instagram/android/widget/ClickableNameSpan;
.source "ViewUtil.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/widget/ClickableNameSpan;-><init>(Z)V

    .line 146
    iput-object p1, p0, Lcom/instagram/util/ViewUtil$UrlClickNameSpan;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/instagram/util/ViewUtil$UrlClickNameSpan;->mUri:Landroid/net/Uri;

    .line 148
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/instagram/util/ViewUtil$UrlClickNameSpan;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    iget-object v1, p0, Lcom/instagram/util/ViewUtil$UrlClickNameSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .parameter "ds"

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-super {p0, p1}, Lcom/instagram/android/widget/ClickableNameSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 153
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/d;->dark_silver:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 154
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 155
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 156
    return-void
.end method
