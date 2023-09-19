Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8BC7A67C3
	for <lists+v9fs-developer@lfdr.de>; Tue, 19 Sep 2023 17:15:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qicRG-0006XI-Nq;
	Tue, 19 Sep 2023 15:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <770aeb84.AU4AACVqvDUAAckX6tYAAM5EgHIAAYCsxc8AndYRABIoIQBlCbTF@a1189921.bnc3.mailjet.com>)
 id 1qicRG-0006XC-0e for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Sep 2023 15:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:List-Id:Date:Subject:
 To:From:MIME-Version:Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u02erdHG6PebjpvKHnT7AL/9oPWCYnRVyEPHqv1euxE=; b=hgQwYlsM67U1ItP0kDD81vFPto
 MEMxkv5wTG9PlNJ5M7p+s6nEAYvdP/KVVlMdeAZPfGHnMWgSro0xikzYRLmQJsKE/ZqLWDcA2++dO
 dVpCWjuqqc2E+2RvOqjM0n1W5p4u5YuTGqeYIFC1f7E0/WEAsnJBN5CCQoWpnuaiIQDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:List-Id:Date:Subject:To:From:MIME-Version:
 Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=u02erdHG6PebjpvKHnT7AL/9oPWCYnRVyEPHqv1euxE=; b=A
 +jet4sVE9CbefyvxP4w25v1btjaKsAI0FO0MNCBbK7y6rAWg2JO24GwbNZOokIFYD4xORI+r0qykC
 bkha2kjRyp8QqUxCc9fJ0B9g6BOVhM7hkV6j3TXWxFOF6rnnEZcmV4reBoZgy8aGNmDYoWvwMwnQs
 GkbmFVFuhTKDBQFw=;
Received: from o123.p8.mailjet.com ([87.253.233.123])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qicRE-00038m-Ju for v9fs-developer@lists.sourceforge.net;
 Tue, 19 Sep 2023 15:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; q=dns/txt;
 d=bnc3.mailjet.com; i=sales=3Dcypress-tech.com@a1189921.bnc3.mailjet.com;
 s=mailjet2; x=1695142117; 
 h=message-id:mime-version:from:from:to:to:subject:subject:date:date:list-id:list-unsubscribe-post:
 list-unsubscribe:feedback-id:precedence:x-campaignid:x-csa-complaints:
 x-mj-mid:x-mj-smtpguid:x-report-abuse-to:content-type;
 bh=O9EFB8rZothxtoLz7LwjYLGmKUFXpEF4oRsM3g1ju5s=;
 b=r1E0aoYpg1jineqZkabmovmtYaepMmgZm+Xw7pFbgcDDmhIO8Gdq4lvXa
 Gh88R3hKl/Hm+p+0bTmoB7j3ygo0Qdj525LNceEw9qe9z9VOcMJhMYq5yFPL
 S5prMI70+i4i4pl1eABKvk+WBQC+wbSJvjTSb5pNZuYioPwe9QqDkE=
Message-Id: <770aeb84.AU4AACVqvDUAAckX6tYAAM5EgHIAAYCsxc8AndYRABIoIQBlCbTF@mailjet.com>
MIME-Version: 1.0
From: Jesse Dougherty <sales@cypress-tech.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue, 19 Sep 2023 14:48:36 +0000 (UTC)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-Id: 42.1189921.1191387:MJ
Precedence: bulk
X-CampaignID: 7668755158
X-CSA-Complaints: csa-complaints@eco.de
X-MJ-Mid: AU4AACVqvDUAAckX6tYAAM5EgHIAAYCsxc8AndYRABIoIQBlCbTFmZD2Xg52SriNT6DuUUfFXwASLds
X-MJ-SMTPGUID: 9990f65e-0e76-4ab8-8d4f-a0ee5147c55f
X-REPORT-ABUSE-TO: Message sent by Mailjet please report to
 abuse@mailjet.com with a copy of the message
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Cypress Technology,
 Inc. is an HP hardware vendor specializing
 in selling and supporting classic Hewlett-Packard hardware infrastructure.
 We offer HP hardware from the early 1990's to the current date [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: mjt.lu]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [87.253.233.123 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.253.233.123 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1qicRE-00038m-Ju
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] HPE Itanium & 9000 Servers for HP-UX Unix &
 OpenVMS OS
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

Q3lwcmVzcyBUZWNobm9sb2d5LCBJbmMuIGlzIGFuIEhQIGhhcmR3YXJlIHZlbmRvciBzcGVjaWFs
aXppbmcgaW4gc2VsbGluZyBhbmQgc3VwcG9ydGluZyBjbGFzc2ljIEhld2xldHQtUGFja2FyZCBo
YXJkd2FyZSBpbmZyYXN0cnVjdHVyZS4gV2Ugb2ZmZXIgSFAgaGFyZHdhcmUgZnJvbSB0aGUgZWFy
bHkgMTk5MCdzIHRvIHRoZSBjdXJyZW50IGRhdGUuIFdlIHNlbGwgYW5kIHN1cHBvcnQgc2VydmVy
cyBmb3IgdGhlIGZvbGxvd2luZyBPUzogSFAtVVggVW5peCwgT3BlblZNUywgTVBFL2lYLCBIUC1S
VCwgUlRFLUEsIGFuZCBBQkIgQWR2YW50LgoKICogSFAgSXRhbml1bSBTZXJ2ZXJzIC0gUlgyODAw
LCBSWDg2eHgsIFJYNzZ4eCwgUlg0Nnh4LCBSWDI2eHguLiBjbGFzcwogKiBIUCBJdGFuaXVtIEJs
YWRlIFNlcnZlcnMgLSBCTDg2MGMsIEJMODcwYywgQkw4OTBjIGkyIGk0IGk2IFNlcnZlcnMKICog
SFAgSXRhbml1bSBXb3Jrc3RhdGlvbnMgLSBaWDYwMDAgY2xhc3MKICogSFAgOTAwMCBIUC1VWCBT
ZXJ2ZXJzIC0gUlAgc2VydmVycywgQSwgRCwgRSwgRiwgRywgTiwgSywgVC4uIGNsYXNzCiAqIEhQ
IDkwMDAgSFAtVVggV29ya3N0YXRpb25zIC0gQiwgQywgSiwgNzAwIHNlcmllcyB3b3Jrc3RhdGlv
bnMKICogSFAgOTAwMCBIUC1VWCBWTUUgYmFzZWQgaW5kdXN0cmlhbCBjb250cm9sbGVycwogKiBI
UCBlMzAwMCBNUEUvaVggU2VydmVycwogKiBIUCAxMDAwIEhQLVJURSBBOTkwLCBBNzAwLCBBNjAw
LCBBNDAwLi4gc2VydmVycwogKiBBQkIgLyBIUCBVbml4IEFkdmFudCA1MDAgc2VyaWVzIGNvbnRy
b2xsZXJzLSDCoFJUQSByZWFsLXRpbWUgYWNjZWxlcmF0b3IKICogQWxsIHBhcnRzIGFuZCBwZXJp
cGhlcmFscyBmb3IgdGhlIGFib3ZlIHN5c3RlbXMgbGluZXMuCgpDdXJyZW50IHNwZWNpYWxzCgpI
UCBSWDI4MDAgaTQvaTYgQVQxMDFBIEludGVncml0eSBTZXJ2ZXJzIGZvciBIUC1VWCBVbml4IDEx
LjMxIHYzIG9yIE9wZW5WTVMgwqAgwqBDbGljayBmb3IgUHJpY2luZyBbaHR0cDovL3d3dy5jeXBy
ZXNzLXRlY2guY29tL2F0MTAxYS1yeDI4MDAtb3JkZXIuaHRtbF0KCiAqIFdlIG9mZmVyIGRpc2Fz
dGVyIGJhY2stdXAgc3lzdGVtcywgY2xvbmUgcmVwbGljYXMsICYgcHJvZHVjdGlvbiBzeXN0ZW1z
LgogKiBXZSBwcm92aWRlIHJlcGxhY2VtZW50IC8gc3BhcmUgcGFydHMgLyBwZXJpcGhlcmFscyBm
b3IgSFAgcHJvZHVjdCBsaW5lcyBhYm92ZS4KICogV2UgcHVyY2hhc2UgdXNlZCBhbmQgc3VycGx1
cyBIUCBoYXJkd2FyZQogKiBXZSBzaGlwIFdvcmxkd2lkZS4KICogQ29udGFjdCBmb3IgcHJpY2lu
ZyBvbiBzeXN0ZW0sIHBhcnRzLCBvciBxdWVzdGlvbnMKCsKgCgogKiBUaGFuayB5b3UKICogSmVz
c2UgRG91Z2hlcnR5CiAqIEN5cHJlc3MgVGVjaG5vbG9neSwgSW5jLgogKiBMYW5kIE8gTGFrZXMs
IEZsb3JpZGEgVVNBCiAqIFBob25lIDg4OC05NTQtMzQxNCAvIChkaXJlY3QpIDQxMi01ODktMzc3
OQogKiBKZXNzZUBDeXByZXNzLVRlY2guY29tIFtKZXNzZUBDeXByZXNzLVRlY2guY29tXQogKiB3
d3cuQ3lwcmVzcy1UZWNoLmNvbSBbaHR0cDovL3d3dy5DeXByZXNzLVRlY2guY29tXQoKwqAKCgoK
VGhpcyBlLW1haWwgaGFzIGJlZW4gc2VudCB0byB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQsIGNsaWNrIGhlcmUgdG8gdW5zdWJzY3JpYmUgaHR0cDovL3h6MDF4Lm1qdC5sdS91
bnN1YjI/aGw9ZW4mbT1BVTRBQUNWcXZEVUFBY2tYNnRZQUFNNUVnSElBQVlDc3hjOEFuZFlSQUJJ
b0lRQmxDYlRGbVpEMlhnNTJTcmlOVDZEdVVVZkZYd0FTTGRzJmI9NzcwYWViODQmZT04ODc4MGYy
YiZ4PTl4RmQ3cG81ZGlIcXVHRzVteFVGRlEtNnFpTlVYSGxGTjlyUTdhem9rR3VUZlRpclVVUndy
UFpzbC1USVJHYzQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
