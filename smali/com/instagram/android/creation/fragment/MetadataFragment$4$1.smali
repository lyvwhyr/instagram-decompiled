.class Lcom/instagram/android/creation/fragment/MetadataFragment$4$1;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/creation/fragment/MetadataFragment$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/fragment/MetadataFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment$4$1;->this$1:Lcom/instagram/android/creation/fragment/MetadataFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Lcom/instagram/camera/Storage;->deleteOriginal()V

    .line 196
    return-void
.end method
