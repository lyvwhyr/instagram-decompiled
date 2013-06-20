.class Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$4;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask$4;->this$1:Lcom/instagram/api/loaderrequest/FacebookHelper$FetchFacebookProfileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 165
    return-void
.end method
