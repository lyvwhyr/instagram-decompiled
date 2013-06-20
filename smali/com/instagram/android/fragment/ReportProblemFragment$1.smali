.class Lcom/instagram/android/fragment/ReportProblemFragment$1;
.super Ljava/lang/Object;
.source "ReportProblemFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ReportProblemFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ReportProblemFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/instagram/android/fragment/ReportProblemFragment$1;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/android/fragment/ReportProblemFragment$1;->this$0:Lcom/instagram/android/fragment/ReportProblemFragment;

    #getter for: Lcom/instagram/android/fragment/ReportProblemFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/instagram/android/fragment/ReportProblemFragment;->access$000(Lcom/instagram/android/fragment/ReportProblemFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 63
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 67
    return-void
.end method
