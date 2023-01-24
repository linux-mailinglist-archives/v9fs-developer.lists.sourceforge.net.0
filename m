Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE9679FFB
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 18:19:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pKMx1-0006w9-TR;
	Tue, 24 Jan 2023 17:19:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <4b14e565.AVQAAAoplMYAAcjYpAYAAM5EgHIAAYCsb78AnNMcABIoIQBj0Azq@a1189921.bnc3.mailjet.com>)
 id 1pKMx0-0006w3-Ko for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 17:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:List-Id:Date:Subject:
 To:From:MIME-Version:Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UlxSKaQoiIPbLwp3bbkkUwa5Z7/UGvZgXekgy0EAq2I=; b=RV/lad2r4DMhaxw2/ubKQVSWZW
 NO5bfxqjBcq5mktnxjYJJ5qjInHzXWZzJvY0lZ4ySINC5uhTet3Yt+F0+FeBzUaj28phxcYtVMro9
 vZbI3BWAF7pf75+x/2VADwl6OCYCMkarOQOlrUktz5uEy8SCJwo4mYL+PezQItNnU+A8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:List-Id:Date:Subject:To:From:MIME-Version:
 Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UlxSKaQoiIPbLwp3bbkkUwa5Z7/UGvZgXekgy0EAq2I=; b=e
 lSq51K/NxpzsLU1HX5cCzgRfBV6eOKJVwb+PVa/uMBCXR++W2Uh31CfRCG3x3lkX4IsKYaw+bWTeX
 R7LAteSwozKsh7CQWEvhrCHSEX16jpXK+H4bX3PqSF96Lj5JIK4K4PiSTJDv7yvcKkensMDQH8DIE
 tizjUlAy1NrPCwe4=;
Received: from o75.p38.mailjet.com ([185.250.237.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pKMwy-0007xW-KI for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 17:19:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; q=dns/txt;
 d=bnc3.mailjet.com; i=jesse.cypresstech=3Dgmail.com@a1189921.bnc3.mailjet.com;
 s=mailjet2; x=1674666578; 
 h=message-id:mime-version:from:from:to:to:subject:subject:date:date:list-id:list-unsubscribe:
 list-unsubscribe-post:feedback-id:precedence:x-campaignid:x-csa-complaints:
 x-mj-mid:x-mj-smtpguid:x-report-abuse-to:content-type;
 bh=TuSZFvR6HHFjAoR3jlfIFx4N5JhSvgfdfWpcqXC3L6Y=;
 b=X4iqCzeRG/WCIKK9T6Bzjkq44nCnhwEPELXM1HBHyi7CSP5D3Dg46vGt5
 CpW9KFzvXeGo5uYMsT58NV3QdWvJNUd7zAzlOFit27bq5bSsXuRED6AqufR5
 J4n3Fmz5EhNShVdYcm6Vk54ApwZE6EfBELnDMmAugH0bq30M/YS8As=
Message-Id: <4b14e565.AVQAAAoplMYAAcjYpAYAAM5EgHIAAYCsb78AnNMcABIoIQBj0Azq@mailjet.com>
MIME-Version: 1.0
From: Jesse Dougherty <jesse.cypresstech@gmail.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue, 24 Jan 2023 16:52:58 +0000 (UTC)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-Id: 42.1189921.1191387:MJ
Precedence: bulk
X-CampaignID: 7664608262
X-CSA-Complaints: csa-complaints@eco.de
X-MJ-Mid: AVQAAAoplMYAAcjYpAYAAM5EgHIAAYCsb78AnNMcABIoIQBj0AzqmRIr_MXdRge39Rjwod4qHgASLds
X-MJ-SMTPGUID: 99122bfc-c5dd-4607-b7f5-18f0a1de2a1e
X-REPORT-ABUSE-TO: Message sent by Mailjet please report to
 abuse@mailjet.com with a copy of the message
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hewlett-Packard hardware (Buy, Sell, Repair, & Support) 
   Cypress Technology, Inc. is a HP hardware vendor specializing in selling and
    supporting classic Hewlett-Packard infrastructure. We offer HP hardware from
    the early 1990's to the current date. We sell [...] 
 
 Content analysis details:   (1.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [185.250.237.75 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: mjt.lu]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [185.250.237.75 listed in wl.mailspike.net]
  1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
                             headers
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
                              CUSTOM_MED
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [jesse.cypresstech[at]gmail.com]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1pKMwy-0007xW-KI
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Hewlett-Packard Unix MPE/iX servers / workstations
 disaster back-ups, spare parts & ABB Advant RTA
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGV3bGV0dC1QYWNrYXJkIGhhcmR3YXJlIChCdXksIFNlbGwsIFJlcGFpciwgJiBTdXBwb3J0KcKg
CgpDeXByZXNzIFRlY2hub2xvZ3ksIEluYy4gaXMgYSBIUCBoYXJkd2FyZSB2ZW5kb3Igc3BlY2lh
bGl6aW5nIGluIHNlbGxpbmcgYW5kIHN1cHBvcnRpbmcgY2xhc3NpYyBIZXdsZXR0LVBhY2thcmQg
aW5mcmFzdHJ1Y3R1cmUuIFdlIG9mZmVyIEhQIGhhcmR3YXJlIGZyb20gdGhlIGVhcmx5IDE5OTAn
cyB0byB0aGUgY3VycmVudCBkYXRlLiBXZSBzZWxsIGFuZCBzdXBwb3J0IHRoZSBmb2xsb3dpbmc6
LgoKICogSFAgSUE2NCBJdGFuaXVtIEludGVncml0eSAoUlgpIHNlcnZlcnPCoAogKiBIUCA5MDAw
IEVudGVycHJpc2Ugc2VydmVycwogKiBIUCAzMDAwIEVudGVycHJpc2Ugc2VydmVyc8KgCiAqIEhQ
IDEwMDAgU2VyaWVzIHNlcnZlcnMKICogSFAgOTAwMCBVbml4IHdvcmtzdGF0aW9ucyDCoC8gY29u
dHJvbGxlcnPCoAogKiBIUC1VWCAmIE1QRS9pWCBzZXJ2ZXJzIGFuZCByZWxhdGVkIGhhcmR3YXJl
CiAqIEhQIEFCQiBBZHZhbnQgU3RhdGlvbnMsIFJUQSBSZWFsIFRpbWUgQWNjZWxlcmF0b3IgcGxh
dGZvcm0gLyBPU0MgLyA4MDB4QQogKiDCoAogKiDCoCDCoCBkaXNhc3RlciBiYWNrLXVwLCBjbG9u
ZSByZXBsaWNhcywgc3BhcmUgcGFydHMsIGFuZCBhZGQgb24gcGVyaXBoZXJhbHMKICogwqAgwqAg
cmVwbGFjZW1lbnQgcGFydHMgZm9yIGRpc2NvbnRpbnVlZCBIUCBzeXN0ZW1zwqAKICogwqAgwqAg
YnV5IC0gb2ZmIGxlYXNlIGJ1bGssIHN1cnBsdXMsICYgdW51c2VkIEhQIGhhcmR3YXJlCiAqIMKg
IMKgIHNoaXAgLyBleHBvcnQgV29ybGR3aWRlIHRvIGV2ZXJ5IGNvdW50cnkKCkNvbnRhY3QgdXMg
aWYgeW91IHdpc2ggdG8gYnV5LCBzZWxsLCBvciBSRlEgb24gYW55IEhQIGhhcmR3YXJlLiBDb250
YWN0IHdpdGggYW55IHF1ZXN0aW9ucywgcmVxdWVzdHMsIG9yIGFzc2lzdGFuY2UuwqAKCiAqIMKg
IMKgIFRoYW5rIHlvdQogKiDCoCDCoCBKZXNzZSBEb3VnaGVydHkKICogwqAgwqAgQ3lwcmVzcyBU
ZWNobm9sb2d5LCBJbmMuCiAqIMKgIMKgIExhbmQgTyBMYWtlcywgRmxvcmlkYSBVU0EKICogwqAg
wqAgUGhvbmUgODg4LTk1NC0zNDE0IC8gKGRpcmVjdCkgNDEyLTU4OS0zNzc5CiAqIMKgIMKgwqBq
ZXNzZUBjeXByZXNzLXRlY2guY29tIFtqZXNzZUBjeXByZXNzLXRlY2guY29tXQogKiDCoCDCoMKg
d3d3LkN5cHJlc3MtVGVjaC5jb20gW2h0dHA6Ly93d3cuQ3lwcmVzcy1UZWNoLmNvbV0KCsKgCgoK
ClRoaXMgZS1tYWlsIGhhcyBiZWVuIHNlbnQgdG8gdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0LCBjbGljayBoZXJlIHRvIHVuc3Vic2NyaWJlIGh0dHA6Ly94ejAxeC5tanQubHUv
dW5zdWIyP2hsPWVuJm09QVZRQUFBb3BsTVlBQWNqWXBBWUFBTTVFZ0hJQUFZQ3NiNzhBbk5NY0FC
SW9JUUJqMEF6cW1SSXJfTVhkUmdlMzlSandvZDRxSGdBU0xkcyZiPTRiMTRlNTY1JmU9MTM5ZjVi
NjMmeD05eEZkN3BvNWRpSHF1R0c1bXhVRkZRLTZxaU5VWEhsRk45clE3YXpva0d1VGZUaXJVVVJ3
clBac2wtVElSR2M0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
