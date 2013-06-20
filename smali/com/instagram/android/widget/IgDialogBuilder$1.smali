.class Lcom/instagram/android/widget/IgDialogBuilder$1;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/IgDialogBuilder;

.field final synthetic val$buttonPositive:I

.field final synthetic val$onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/IgDialogBuilder;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->this$0:Lcom/instagram/android/widget/IgDialogBuilder;

    iput-object p2, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput p3, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->val$buttonPositive:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->val$onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->this$0:Lcom/instagram/android/widget/IgDialogBuilder;

    #getter for: Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/instagram/android/widget/IgDialogBuilder;->access$000(Lcom/instagram/android/widget/IgDialogBuilder;)Landroid/app/Dialog;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->val$buttonPositive:I

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder$1;->this$0:Lcom/instagram/android/widget/IgDialogBuilder;

    #getter for: Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->access$000(Lcom/instagram/android/widget/IgDialogBuilder;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 88
    return-void
.end method
