Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 268BC6F105B
	for <lists+v9fs-developer@lfdr.de>; Fri, 28 Apr 2023 04:33:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1psDvm-0004Rt-Me;
	Fri, 28 Apr 2023 02:33:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <da7d8474.AW4AABZcwxMAAcju9ioAAM5EgHIAAYCsxc8AnUiJABIoIQBkSyo6@a1189921.bnc3.mailjet.com>)
 id 1psDvl-0004Rn-8d for v9fs-developer@lists.sourceforge.net;
 Fri, 28 Apr 2023 02:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:List-Id:Date:Subject:
 To:From:MIME-Version:Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6FbN6Bk1uvwuFLaxuLx0TMdUWnBFWBdRTtznPvKyr00=; b=Ikj5htK0bZnEaaWRYAMYkRc6Qe
 d0SkcgTAWSbwF9p6OSEQsH+OKb9kU7Mf/5J/KMQZda2eaiugU1GqMHRj2ovrmFZHFtRIe/OHFxerJ
 wY5hFhNxT+xlgrgVrD6EoLBtfVmIMEt1R/OJSycMqrWOxVESmsjihJZcoA81+TxwZ2MQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:List-Id:Date:Subject:To:From:MIME-Version:
 Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6FbN6Bk1uvwuFLaxuLx0TMdUWnBFWBdRTtznPvKyr00=; b=P
 EGgZIFuu/VwdGLjsrLLh59MzcPZbZbAn6oYa84IoCZoS/P9z75DTHFMuQwdONnzJnOged7smNwMQy
 ZV4k8VXlPH8SvKRYnd92QyWEYwBt7UjukkBn9zIjmI6Dgqh6L2uhtdJjhFGvvDSJ47zacaX3Zg0Ta
 eS+kg0qsMlrkqC7o=;
Received: from o10.p38.mailjet.com ([185.250.237.10])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1psDvh-000850-LO for v9fs-developer@lists.sourceforge.net;
 Fri, 28 Apr 2023 02:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; q=dns/txt;
 d=bnc3.mailjet.com; i=sales=3Dcypress-tech.com@a1189921.bnc3.mailjet.com;
 s=mailjet1; x=1682657610; 
 h=message-id:mime-version:from:from:to:to:subject:subject:date:date:list-id:list-unsubscribe-post:
 list-unsubscribe:feedback-id:precedence:x-campaignid:x-csa-complaints:
 x-mj-mid:x-mj-smtpguid:x-report-abuse-to:content-type;
 bh=jz6RJMSnx0KwLq/vgGNvPHcQEVIJugkz19xulXHBvu8=;
 b=X/Zfyepx9R/UPIJdngktTP6WOB0Rkn1eeGG0+0Lg4JxfAGc8w/rXl6ptT
 xHmIbmK3mo9RHZmi8xsLEujq0BBg4GSnpC+Vfgr976m08+nGAiJiUoYE74xs
 QJdj8jYAQYis2NFbO9pPvoYUGr0OwsTOu/WR8Aw1OmrgZe3LEgWg1M=
Message-Id: <da7d8474.AW4AABZcwxMAAcju9ioAAM5EgHIAAYCsxc8AnUiJABIoIQBkSyo6@mailjet.com>
MIME-Version: 1.0
From: Jesse Dougherty <sales@cypress-tech.com>
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 28 Apr 2023 02:06:49 +0000 (UTC)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-Id: 42.1189921.1191387:MJ
Precedence: bulk
X-CampaignID: 7666071082
X-CSA-Complaints: csa-complaints@eco.de
X-MJ-Mid: AW4AABZcwxMAAcju9ioAAM5EgHIAAYCsxc8AnUiJABIoIQBkSyo66S_n-FLiRLWebt7agONWhgASLds
X-MJ-SMTPGUID: e92fe7f8-52e2-44b5-9e6e-deda80e35686
X-REPORT-ABUSE-TO: Message sent by Mailjet please report to
 abuse@mailjet.com with a copy of the message
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  (Buy, Sell, Repair, & Support)  Cypress Technology is a reseller
    of HP 9000, e3000, & Itanium series, ABB Addvant series hardware working
   with the HP-UX UNIX, MPE/iX, and VMS operating systems. We have been in business
    for 28 years [...] 
 
 Content analysis details:   (0.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [185.250.237.10 listed in list.dnswl.org]
  1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
                             [URIs: mjt.lu]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [185.250.237.10 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1psDvh-000850-LO
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Hewlett-Packard / ABB hardware - Cypress Technology
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

KEJ1eSwgU2VsbCwgUmVwYWlyLCAmIFN1cHBvcnQpwqAKCkN5cHJlc3MgVGVjaG5vbG9neSBpcyBh
IHJlc2VsbGVyIG9mIEhQIDkwMDAsIGUzMDAwLCAmIEl0YW5pdW0gc2VyaWVzLCBBQkIgQWRkdmFu
dCBzZXJpZXMgaGFyZHdhcmUgd29ya2luZyB3aXRoIHRoZSBIUC1VWCBVTklYLCBNUEUvaVgsIGFu
ZCBWTVMgb3BlcmF0aW5nIHN5c3RlbXMuIFdlIGhhdmUgYmVlbiBpbiBidXNpbmVzcyBmb3IgMjgg
eWVhcnMgc2VsbGluZyBIUCBoYXJkd2FyZSB0byBlbmQtdXNlcnMsIHJlc2VsbGVyLCBtYWludGVu
YW5jZSBjb21wYW5pZXMsIGFuZCBkYXRhIGNlbnRlcnMuIFdlIHNlbGwgY29tcGxldGUgcGx1Zy1u
LXBsYXkgc3lzdGVtcyB3aXRoIE9TIGxvYWRlZCBvciBzcGFyZSBwYXJ0cy4gV2UgcHJvdmlkZSBy
ZXBsYWNlbWVudHMgZm9yIGRpc2NvbnRpbnVlZCBIUCBwcm9kdWN0IGxpbmVzLgoKVGhlIGhhcmR3
YXJlIHRoYXQgd2Ugc3RvY2sgYW5kIGhhdmUgZXhwZXJ0aXNlIG9uIGlzOgoKICogSFAgSXRhbml1
bSBJQTY0IHNlcnZlcnMgLSByeDI4MDAsIFJYIGNsYXNzIElBNjQgYmxhZGUsIGV0Y8KgCiAqIEhQ
IEl0YW5pdW0gSUE2NCB3b3Jrc3RhdGlvbnMgLSBaWCBjbGFzcwogKiBIUCA5MDAwIEhQLVVYIFBB
LVJJU0MgUlAsIEEsIEQsIEUsIEYsIEcsIE4sIEssIEwsIFQsIGV0Y8KgCiAqIEhQIDkwMDAgSFAt
VVggUEEtUklTQyBCLCBDLCBKLCA3MDAgc2VyaWVzIHdvcmtzdGF0aW9ucwogKiBIUCA5MDAwIEhQ
LVVYIFBBLVJJU0MgVk1FIGJhc2VkIGluZHVzdHJpYWwgY29udHJvbGxlcnMKICogSFAgMTAwMCBI
UC1SVEUgQTk5MCwgQTkwMCBBNzAwLCBBNjAwLCBBNDAwLi4gZXRjIHNlcnZlcnMKICogQUJCIC8g
SFAgQWR2YW50IGNvbnRyb2xsZXJzIC0gUlRBIHJlYWwtdGltZSBhY2NlbGVyYXRvcnMKICogQWxs
IHBhcnRzIGZvciB0aGUgYWJvdmUgc3lzdGVtcywgYXJyYXlzLCBkcml2ZXMsIG1lbW9yeSwgZXRj
CgpIUCBSWDI4MDAgcnVubmluZyBIUC1VWCAxMS4zMSAodjMpIG9yIFZNUyBvcGVyYXRpbmcgc3lz
dGVtcyBbaHR0cDovL3d3dy5jeXByZXNzLXRlY2guY29tL2hwZS1ocC1pbnRlZ3JpdHktaXRhbml1
bS1yeDI4MDAtaTQtaTYtc2VydmVyLmh0bWxdCgogKiBTdGFuZGFyZCA5MC1kYXkgd2FycmFudHkg
LyBlbGlnaWJsZSBmb3IgSFcgbWFpbnRlbmFuY2UKICogZGlzYXN0ZXIgYmFjay11cCwgY2xvbmUg
cmVwbGljYXMsIHNwYXJlIHBhcnRzLCBhbmQgYWRkIG9uIHBlcmlwaGVyYWxzCiAqIHJlcGxhY2Vt
ZW50IHBhcnRzIGZvciBkaXNjb250aW51ZWQgSFAgc3lzdGVtc8KgCiAqIGJ1eSAtIG9mZiBsZWFz
ZSBidWxrLCBzdXJwbHVzLCAmIHVudXNlZCBIUCBoYXJkd2FyZQogKiDCoHNoaXAgLyBleHBvcnQg
V29ybGR3aWRlIHRvIGV2ZXJ5IGNvdW50cnkKCkNvbnRhY3QgdXMgaWYgeW91IHdpc2ggdG8gYnV5
LCBzZWxsLCBvciBSRlEgb24gYW55IEhQIGhhcmR3YXJlLiBDb250YWN0IHdpdGggYW55IHF1ZXN0
aW9ucywgcmVxdWVzdHMsIG9yIGFzc2lzdGFuY2UuwqAKCiAqIMKgIMKgIFRoYW5rIHlvdQogKiDC
oCDCoCBKZXNzZSBEb3VnaGVydHkKICogwqAgwqAgQ3lwcmVzcyBUZWNobm9sb2d5LCBJbmMuCiAq
IMKgIMKgIExhbmQgTyBMYWtlcywgRmxvcmlkYSBVU0EKICogwqAgwqAgUGhvbmUgODg4LTk1NC0z
NDE0IC8gKGRpcmVjdCkgNDEyLTU4OS0zNzc5CiAqIMKgIMKgwqBqZXNzZUBjeXByZXNzLXRlY2gu
Y29tIFtqZXNzZUBjeXByZXNzLXRlY2guY29tXQogKiDCoCDCoMKgd3d3LkN5cHJlc3MtVGVjaC5j
b20gW2h0dHA6Ly93d3cuQ3lwcmVzcy1UZWNoLmNvbV0KCsKgCgoKClRoaXMgZS1tYWlsIGhhcyBi
ZWVuIHNlbnQgdG8gdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0LCBjbGljayBo
ZXJlIHRvIHVuc3Vic2NyaWJlIGh0dHA6Ly94ejAxeC5tanQubHUvdW5zdWIyP2hsPWVuJm09QVc0
QUFCWmN3eE1BQWNqdTlpb0FBTTVFZ0hJQUFZQ3N4YzhBblVpSkFCSW9JUUJrU3lvNjZTX24tRkxp
UkxXZWJ0N2FnT05XaGdBU0xkcyZiPWRhN2Q4NDc0JmU9Zjc1NmUxMzYmeD05eEZkN3BvNWRpSHF1
R0c1bXhVRkZRLTZxaU5VWEhsRk45clE3YXpva0d1VGZUaXJVVVJ3clBac2wtVElSR2M0LgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
