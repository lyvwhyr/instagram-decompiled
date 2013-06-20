.class final Lcom/instagram/api/BaseApiLoaderCallbacks$3;
.super Ljava/lang/Object;
.source "BaseApiLoaderCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$fragmentManager:Landroid/support/v4/app/p;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$3;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$3;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$3;->val$fragmentManager:Landroid/support/v4/app/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$3;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$3;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/AlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/android/fragment/AlertDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/BaseApiLoaderCallbacks$3;->val$fragmentManager:Landroid/support/v4/app/p;

    const-string v2, "alertDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/fragment/AlertDialogFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;)V

    .line 145
    return-void
.end method
