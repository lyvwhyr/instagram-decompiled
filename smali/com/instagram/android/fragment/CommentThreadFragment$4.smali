.class Lcom/instagram/android/fragment/CommentThreadFragment$4;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/CommentThreadFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/CommentThreadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/instagram/android/fragment/CommentThreadFragment$4;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/instagram/android/fragment/CommentThreadFragment$4;->this$0:Lcom/instagram/android/fragment/CommentThreadFragment;

    #calls: Lcom/instagram/android/fragment/CommentThreadFragment;->validate()Z
    invoke-static {v0}, Lcom/instagram/android/fragment/CommentThreadFragment;->access$200(Lcom/instagram/android/fragment/CommentThreadFragment;)Z

    .line 113
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 103
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 108
    return-void
.end method
