.class Lcom/facebook/a/k;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/a/j;


# direct methods
.method constructor <init>(Lcom/facebook/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/a/k;->a:Lcom/facebook/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/a/k;->a:Lcom/facebook/a/j;

    invoke-static {v0}, Lcom/facebook/a/j;->a(Lcom/facebook/a/j;)Lcom/facebook/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/a/e;->onCancel()V

    .line 110
    iget-object v0, p0, Lcom/facebook/a/k;->a:Lcom/facebook/a/j;

    invoke-virtual {v0}, Lcom/facebook/a/j;->dismiss()V

    .line 111
    return-void
.end method
