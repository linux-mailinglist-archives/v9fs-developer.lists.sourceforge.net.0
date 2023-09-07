Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C279731E
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Sep 2023 16:42:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qeGCv-0003wq-3H;
	Thu, 07 Sep 2023 14:42:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+34502291-403f-v9fs-developer=lists.sourceforge.net@em3226.sendfoxmail.com>)
 id 1qeGCt-0003wj-AP for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Sep 2023 14:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P4LIgh6/eePaZ6leIzYXy+J/P/Cw/RXErAKRromq3bY=; b=jqJ6qXTm7K8GP/cttfu9GWbdo5
 mfGHjcjIZbsIx1Sc3W/FSUuOtEPcjdLhgeJclzdsA83Hid5Eo8ZYKTwH1VE4PQEQqmB0l/4P0JT2t
 N9OnTc5nkGY2/F6ISAT7TBfOeJsulVdDetzjBShinLwq1wTi3c7nhq7O3qtZFMoKKoSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P4LIgh6/eePaZ6leIzYXy+J/P/Cw/RXErAKRromq3bY=; b=hJQ4HFRHoxhOhnB+F35xW1URqU
 eSAtUFyUbJiTV+CH6w8pLFJJPxNZKaQB58ocJhbk3KL5uovqTg55DLHkOlMxMXtPLOG3xoitLZc41
 t5KgF2EnfFx9jpZd+gUlZqfZNFvkN5qN48Tenx7WP1SRuWn5yaZk9V5y+CbKpEl5Tt/Y=;
Received: from o9.us1.sendfox.com ([167.89.35.240])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qeFJI-00CVQz-3h for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Sep 2023 13:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendfoxmail.com;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe:to:
 cc:content-type:from:subject:to;
 s=s1; bh=P4LIgh6/eePaZ6leIzYXy+J/P/Cw/RXErAKRromq3bY=;
 b=aMQOS6+VjrBbmVBBsGGdJFEro3J16joIShewjSZDW8+Z3LOxhctIUXUfKtD5NQ49d4Hv
 hFaSXj+PzwDk6VwecP6R8xAb7RjfVCfWOGpCOTPiK3/AGL3CkQgo6bs4mwPiAZMhA+7Z04
 EbklS+jePun2p8HtBher9brTuyr6NDDq8uAcrJ4gIa11uvd1mz+C2rgs72Seu/a2lLa/vZ
 DbSGr4XE8BcL11Te76wNhBVezOjz//uFrJ7VFdApwLvchaY6ZGUX5Xi0CvFlHm3TjTdq67
 l0VCQH6Uox23pjlZCWRVxQUM5zL6SdpuPaNNN89HpFodplhdCFKnO/sp7Sml6XHA==
Received: by filterdrecv-66949dbc98-s5rnx with SMTP id
 filterdrecv-66949dbc98-s5rnx-1-64F9CBC9-E
 2023-09-07 13:10:33.232892448 +0000 UTC m=+4406881.482608284
Received: from MzQ1MDIyOTE (unknown) by geopod-ismtpd-12 (SG) with HTTP
 id i3k-Q7peSJqe6CT-WwWA3g Thu, 07 Sep 2023 13:10:33.027 +0000 (UTC)
Date: Thu, 07 Sep 2023 13:10:37 +0000 (UTC)
Mime-Version: 1.0
Message-ID: <i3k-Q7peSJqe6CT-WwWA3g@geopod-ismtpd-12>
X-SF-CAMPAIGN: vr9xyy
Feedback-ID: vr9xyy:3q5z2v:campaign:6cca2329-033f-401d-90f5-e1fa4182d394
X-Mailer: SendFox
X-SF-DELIVERABLE: 7x2pp4qr
X-SG-EID: =?us-ascii?Q?PoLznDAJfVWm0JhmuVN1ny+nvxSkLU+mqn1U966fJ0Erv3hCCAlvZb2yLy1sls?=
 =?us-ascii?Q?3lczA=2FkmRS8BmC72jNo6V94r=2FcAfiOyf=2FXWFx3b?=
 =?us-ascii?Q?cvaIX7=2FfLxuRGEV61fHCV53aye0Mr1TTRrAlPRu?=
 =?us-ascii?Q?dMo0lIzQdtzKrMGPnO8II5q8BS30M6cGK+mMWjc?=
 =?us-ascii?Q?Qktd38=2F0SBZDhsGjQaK5bwMI5wyLddz4sFnBnTX?=
 =?us-ascii?Q?O4bxPI6OlEyJ+3HqyXwKRo6ZcmPlaURjyiVinZK?=
 =?us-ascii?Q?SdeYmI7Zs+hY1mFor4h8g=3D=3D?=
X-SG-ID: =?us-ascii?Q?N2C25iY2uzGMFz6rgvQsb8raWjw0ZPf1VmjsCkspi=2FIBNz1iFG7fYuoVJU3W5=2F?=
 =?us-ascii?Q?IXQ5gB7hz0bXu419ciffonKsp3f88LsfkMJUpPT?=
 =?us-ascii?Q?pc=2FWkhvzk8D3WXdFfM73Ox+agIU?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: Xh7v+CfeYqGVlxrcmKtJiA==
X-Spam-Score: 2.4 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  DEAR, We're thrilled to introduce our revolutionary Trading
 Platform and Money Exchange, designed to transform your trading experience.
 As a valued member, you can now enjoy an exclusive 73% discount for a [...]
 Content analysis details:   (2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.35.240 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 DEAR_NOBODY            RAW: Message contains Dear but with no name
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1qeFJI-00CVQz-3h
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 73% OFF | New Sales Offer | Limited Time Only
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: AppDevs via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: AppDevs <appdevs.net@gmail.com>
Cc: AppDevs <mail@sendfoxmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IAoKREVBUiwKCldlJ3JlIHRocmlsbGVkIHRvIGludHJvZHVjZSBvdXIgcmV2b2x1dGlvbmFyeSBU
cmFkaW5nIFBsYXRmb3JtIGFuZApNb25leSBFeGNoYW5nZSwgZGVzaWduZWQgdG8gdHJhbnNmb3Jt
IHlvdXIgdHJhZGluZyBleHBlcmllbmNlLiBBcyBhCnZhbHVlZCBtZW1iZXIsIHlvdSBjYW4gbm93
IGVuam95IGFuIGV4Y2x1c2l2ZSA3MyUgZGlzY291bnQgZm9yIGEKbGltaXRlZCB0aW1lIQoK8J+M
nyBLRVkgRkVBVFVSRVMg8J+MnwoK4pyFIFRyYWRlIE1hcmtldHBsYWNlCgrinIUgT2ZmZXIgYW5k
IENvdW50ZXIgT2ZmZXIKCuKchSBCVVkgfCBTRUxMIHwgRVhDSEFOR0UKCuKchSBCaW9tZXRyaWMg
TG9naW4gd2l0aCBGYWNlSUQgYW5kIFRvdWNoSUQKCuKchSBVc2VyLUZyaWVuZGx5IEludGVyZmFj
ZQoK4pyFIEFkdmFuY2VkIEFuYWx5c2lzIFRvb2xzCgrinIUgUmVhbC1UaW1lIERhdGEKCvCflKUg
TElNSVRFRC1USU1FIE9GRkVSIPCflKUKClVwZ3JhZGUgeW91ciB0cmFkaW5nIGdhbWUgdG9kYXkg
YW5kIHNhdmUgNzMlISBBY3Qgbm93LCB0aGlzIG9mZmVyCmV4cGlyZXMgc29vbi4KClRhcCB0byBT
ZWUgdGhlIFByb2R1Y3QgWy9odHRwczovL3NlbmRmb3guY29tL3Ryay9jbGljay83eDJwcDRxci96
ZTI1Z2VdCgpEb24ndCBtaXNzIHRoaXMgY2hhbmNlIHRvIGFjY2VzcyB0aGUgZnV0dXJlIG9mIHRy
YWRpbmcgYXQgYW4KdW5iZWF0YWJsZSBwcmljZS4KCkJlc3QgUmVnYXJkcy4KCkFQUERFVlMgLSBT
T0ZUV0FSRSBTT0xVVElPTlMKCldFQlNJVEU6IEhUVFBTOi8vQVBQREVWUy5ORVQKWy9odHRwczov
L3NlbmRmb3guY29tL3Ryay9jbGljay83eDJwcDRxci82ZzQycWVdCgpXSEFUU0FQUDogKzQ0NzQ2
MjI0NjgxNAoKIAkJQXBwRGV2cyBGbGF0OiAxNDA0LCBCbG9jazogQywgQnVpbGRpbmc6IEtyaXNo
bm9jaHVyYSwgU2VjdG9yOiAxOCwKVXR0YXJhIERoYWthLCBEaGFrYSAxMjMwIEJhbmdsYWRlc2gK
CiAJCSBVbnN1YnNjcmliZSBbL2h0dHBzOi8vc2VuZGZveC5jb20vdHJrL3Vuc3Vic2NyaWJlLzd4
MnBwNHFyXSAKCiAgCgogCQkgW1NlbmRGb3hdIFsvaHR0cHM6Ly9zZW5kZm94LmNvbS90cmsvY2xp
Y2svN3gycHA0cXIvcnF5cno5XSAKCiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
