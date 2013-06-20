.class Lcom/instagram/android/receiver/C2DMReceiver$1;
.super Ljava/lang/Object;
.source "C2DMReceiver.java"

# interfaces
.implements Lcom/instagram/android/mediacache/MultiBitmapFetcher$MultiBitmapCallback;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/receiver/C2DMReceiver;

.field final synthetic val$avatarUrl:Ljava/lang/String;

.field final synthetic val$builder:Landroid/support/v4/app/ao;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$notificationID:I

.field final synthetic val$summaryText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/receiver/C2DMReceiver;Ljava/lang/String;Landroid/support/v4/app/ao;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->this$0:Lcom/instagram/android/receiver/C2DMReceiver;

    iput-object p2, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$builder:Landroid/support/v4/app/ao;

    iput-object p4, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$avatarUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$summaryText:Ljava/lang/String;

    iput-object p6, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$context:Landroid/content/Context;

    iput p7, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$notificationID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBitmaps(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Landroid/support/v4/app/am;

    iget-object v2, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$builder:Landroid/support/v4/app/ao;

    iget-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$avatarUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ao;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/am;-><init>(Landroid/support/v4/app/ao;)V

    iget-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$imageUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/am;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/am;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$summaryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/am;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/am;->a()Landroid/app/Notification;

    move-result-object v0

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$notificationID:I

    #calls: Lcom/instagram/android/receiver/C2DMReceiver;->sendNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    invoke-static {v1, v2, v0}, Lcom/instagram/android/receiver/C2DMReceiver;->access$000(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 167
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$builder:Landroid/support/v4/app/ao;

    iget-object v0, p0, Lcom/instagram/android/receiver/C2DMReceiver$1;->val$avatarUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ao;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ao;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method
