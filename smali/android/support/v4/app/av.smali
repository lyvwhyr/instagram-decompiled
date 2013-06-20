.class public abstract Landroid/support/v4/app/av;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field b:Landroid/support/v4/app/ao;

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/av;->e:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Landroid/support/v4/app/av;->b:Landroid/support/v4/app/ao;

    if-eqz v1, :cond_0

    .line 589
    iget-object v0, p0, Landroid/support/v4/app/av;->b:Landroid/support/v4/app/ao;

    invoke-virtual {v0}, Landroid/support/v4/app/ao;->a()Landroid/app/Notification;

    move-result-object v0

    .line 591
    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/v4/app/ao;)V
    .locals 1
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v4/app/av;->b:Landroid/support/v4/app/ao;

    if-eq v0, p1, :cond_0

    .line 579
    iput-object p1, p0, Landroid/support/v4/app/av;->b:Landroid/support/v4/app/ao;

    .line 580
    iget-object v0, p0, Landroid/support/v4/app/av;->b:Landroid/support/v4/app/ao;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Landroid/support/v4/app/av;->b:Landroid/support/v4/app/ao;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/av;)Landroid/support/v4/app/ao;

    .line 584
    :cond_0
    return-void
.end method
