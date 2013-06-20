.class Lcom/instagram/android/creation/fragment/MetadataFragment$7;
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
    .line 268
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$7;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$7;->this$0:Lcom/instagram/android/creation/fragment/MetadataFragment;

    #calls: Lcom/instagram/android/creation/fragment/MetadataFragment;->startPeopleTagging()V
    invoke-static {v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->access$1000(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    .line 272
    return-void
.end method
