.class Lcom/instagram/android/creation/fragment/MetadataFragment$14;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$14;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$14;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-virtual {v0, p1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->onClickLocationButton(Landroid/view/View;)V

    .line 572
    return-void
.end method
