.class Lcom/instagram/android/gl/FilterController$7$1;
.super Ljava/lang/Object;
.source "FilterController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/gl/FilterController$7;

.field final synthetic val$finalBufferIndex:I


# direct methods
.method constructor <init>(Lcom/instagram/android/gl/FilterController$7;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/instagram/android/gl/FilterController$7$1;->this$1:Lcom/instagram/android/gl/FilterController$7;

    iput p2, p0, Lcom/instagram/android/gl/FilterController$7$1;->val$finalBufferIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 120
    iget v0, p0, Lcom/instagram/android/gl/FilterController$7$1;->val$finalBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    const-string v0, "FilterController"

    const-string v1, "Error rendering GL buffer isLowEnd = %b dimen = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/instagram/android/gl/FilterController$7$1;->this$1:Lcom/instagram/android/gl/FilterController$7;

    iget v4, v4, Lcom/instagram/android/gl/FilterController$7;->val$dimen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/common/i/c;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/crash/IgErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/instagram/android/gl/FilterController$7$1;->this$1:Lcom/instagram/android/gl/FilterController$7;

    iget-object v0, v0, Lcom/instagram/android/gl/FilterController$7;->val$callbacks:Lcom/instagram/android/gl/FilterController$RenderCallbacks;

    invoke-interface {v0}, Lcom/instagram/android/gl/FilterController$RenderCallbacks;->renderError()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/gl/FilterController$7$1;->this$1:Lcom/instagram/android/gl/FilterController$7;

    iget-object v0, v0, Lcom/instagram/android/gl/FilterController$7;->val$callbacks:Lcom/instagram/android/gl/FilterController$RenderCallbacks;

    iget v1, p0, Lcom/instagram/android/gl/FilterController$7$1;->val$finalBufferIndex:I

    invoke-interface {v0, v1}, Lcom/instagram/android/gl/FilterController$RenderCallbacks;->renderFinished(I)V

    goto :goto_0
.end method
