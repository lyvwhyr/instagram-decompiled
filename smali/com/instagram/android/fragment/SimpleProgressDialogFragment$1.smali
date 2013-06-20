.class Lcom/instagram/android/fragment/SimpleProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "SimpleProgressDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SimpleProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SimpleProgressDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/instagram/android/fragment/SimpleProgressDialogFragment$1;->this$0:Lcom/instagram/android/fragment/SimpleProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 18
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
