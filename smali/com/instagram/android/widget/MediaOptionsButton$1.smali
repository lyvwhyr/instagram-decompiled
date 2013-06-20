.class Lcom/instagram/android/widget/MediaOptionsButton$1;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/MediaOptionsButton;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$1;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$1;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #calls: Lcom/instagram/android/widget/MediaOptionsButton;->showMenu()V
    invoke-static {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->access$000(Lcom/instagram/android/widget/MediaOptionsButton;)V

    .line 51
    return-void
.end method
