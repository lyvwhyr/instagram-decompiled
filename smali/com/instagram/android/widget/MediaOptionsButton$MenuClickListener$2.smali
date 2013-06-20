.class Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$2;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$2;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$2;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;

    iget-object v0, v0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-virtual {v0}, Lcom/instagram/android/widget/MediaOptionsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$2;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;

    iget-object v1, v1, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    #getter for: Lcom/instagram/android/widget/MediaOptionsButton;->mMedia:Lcom/instagram/android/model/Media;
    invoke-static {v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$400(Lcom/instagram/android/widget/MediaOptionsButton;)Lcom/instagram/android/model/Media;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/service/MediaService;->deleteMedia(Landroid/content/Context;Lcom/instagram/android/model/Media;)V

    .line 145
    return-void
.end method
