.class final Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;
.super Ljava/lang/Object;
.source "PendingMediaRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$media:Lcom/instagram/android/model/PendingMedia;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;->val$media:Lcom/instagram/android/model/PendingMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;->val$media:Lcom/instagram/android/model/PendingMedia;

    invoke-static {v0, v1}, Lcom/instagram/android/service/PendingMediaService;->retry(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    .line 89
    return-void
.end method
