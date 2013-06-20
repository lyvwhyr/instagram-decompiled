.class Lcom/instagram/android/login/fragment/RegisterFragment$4;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/login/fragment/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/RegisterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x139b37cbc60L

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 255
    sget v0, Lcom/facebook/k;->wrong_datetime:I

    invoke-static {v0}, Lcom/instagram/util/ToastUtil;->showTopToast(I)V

    .line 285
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    sget v2, Lcom/facebook/k;->you_entered_your_email_as:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 261
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    #calls: Lcom/instagram/android/login/fragment/RegisterFragment;->getEmail()Ljava/lang/String;
    invoke-static {v1}, Lcom/instagram/android/login/fragment/RegisterFragment;->access$600(Lcom/instagram/android/login/fragment/RegisterFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/util/ViewUtil;->getBoldText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 264
    iget-object v1, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    sget v2, Lcom/facebook/k;->is_this_correct:I

    invoke-virtual {v1, v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 266
    new-instance v1, Lcom/instagram/android/widget/IgDialogBuilder;

    iget-object v2, p0, Lcom/instagram/android/login/fragment/RegisterFragment$4;->this$0:Lcom/instagram/android/login/fragment/RegisterFragment;

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/RegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IgDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IgDialogBuilder;->setCancelable(Z)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->yes:I

    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$4$2;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$4$2;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/k;->no:I

    new-instance v2, Lcom/instagram/android/login/fragment/RegisterFragment$4$1;

    invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/RegisterFragment$4$1;-><init>(Lcom/instagram/android/login/fragment/RegisterFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/IgDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/android/widget/IgDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->create()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
