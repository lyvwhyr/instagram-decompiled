.class public Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;
.super Ljava/lang/Object;
.source "LookupRequest.java"


# instance fields
.field private emailSent:Z

.field final synthetic this$0:Lcom/instagram/android/login/request/LookupRequest;

.field private user:Lcom/instagram/android/model/User;


# direct methods
.method public constructor <init>(Lcom/instagram/android/login/request/LookupRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->this$0:Lcom/instagram/android/login/request/LookupRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->emailSent:Z

    return-void
.end method


# virtual methods
.method public getUser()Lcom/instagram/android/model/User;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->user:Lcom/instagram/android/model/User;

    return-object v0
.end method

.method public isEmailSent()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->emailSent:Z

    return v0
.end method

.method public setEmailSent(Z)V
    .locals 0
    .parameter "emailSent"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->emailSent:Z

    .line 80
    return-void
.end method

.method public setUser(Lcom/instagram/android/model/User;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/instagram/android/login/request/LookupRequest$LookupRequestModel;->user:Lcom/instagram/android/model/User;

    .line 90
    return-void
.end method
