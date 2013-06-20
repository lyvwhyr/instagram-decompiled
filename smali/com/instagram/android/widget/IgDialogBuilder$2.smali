.class Lcom/instagram/android/widget/IgDialogBuilder$2;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/IgDialogBuilder;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/IgDialogBuilder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/instagram/android/widget/IgDialogBuilder$2;->this$0:Lcom/instagram/android/widget/IgDialogBuilder;

    iput-object p2, p0, Lcom/instagram/android/widget/IgDialogBuilder$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder$2;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/instagram/android/widget/IgDialogBuilder$2;->this$0:Lcom/instagram/android/widget/IgDialogBuilder;

    #getter for: Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/instagram/android/widget/IgDialogBuilder;->access$000(Lcom/instagram/android/widget/IgDialogBuilder;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/IgDialogBuilder$2;->this$0:Lcom/instagram/android/widget/IgDialogBuilder;

    #getter for: Lcom/instagram/android/widget/IgDialogBuilder;->mD:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/instagram/android/widget/IgDialogBuilder;->access$000(Lcom/instagram/android/widget/IgDialogBuilder;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    return-void
.end method
