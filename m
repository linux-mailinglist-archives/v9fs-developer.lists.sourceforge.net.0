Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BCDAA01E5
	for <lists+v9fs-developer@lfdr.de>; Tue, 29 Apr 2025 07:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:To:Message-Id:Date:From:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KYfickKbOfcEVFchykauY8EVLbXyBAJWqN/IDpeODNA=; b=W65fNy6zjhHMmRbBIG2GuXI5Q9
	YmEWoyZ6ScNnfQ1NJ0ZKTvYZM6eyIg2umlhSwSOe8nmnJk1NQ1Lg/0mjbwX6NrSzpMwTOAtuVeW0/
	mUnToKEvpcSxb1p6Gg+/NWiQqXtl0sI+3OSUPvXyGf6X9SZIRNrNdJEBct/CdvgkDXXw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1u9djH-0000EH-QS;
	Tue, 29 Apr 2025 05:42:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <cnc=winhooa.getcnmfg.com@bounces.winhooa.getcnmfg.com>)
 id 1u9djG-0000EB-Eu for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Apr 2025 05:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NVhB0UMfX8vJUaVVvKCPlyPy5NsiSm8b9FvmLliZgcI=; b=YLd0A2bcSFbQYcYvcL+IQKzSNf
 lmneXyp5CgnP3QxvzezgSk68JUp2ATyn+vG+GGNjNxCzj7YABaHWjbB6Zyadcxsfx4P6RFWyqQjIQ
 328a0s4i/xQK0O9LrIlupgJ2yhp+fMLN6NCHkxVshyofuUoHU4kQ8QVNfWyfwJgxhPwQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=NVhB0UMfX8vJUaVVvKCPlyPy5NsiSm8b9FvmLliZgcI=; b=Gi+JlnRUvnrN
 8VJQrXfBz0gnr84l+9q9brmDygUw5DUjF7ppaWyYsn4dGbyGtCAg+UQPAEXL7V5f9p3G+2V/oM36O
 AW7s4Tp+zL+OSgtlU0gokKtFE5f3vhQKW/3lxT5efyB6FB2JsKVXKcVtAvrlB5X/i6goEPKAm2Z9i
 m/9fc=;
Received: from m226.mxout.mta4.net ([67.227.85.226])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u9dj0-0004bV-DB for v9fs-developer@lists.sourceforge.net;
 Tue, 29 Apr 2025 05:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=winhooa.getcnmfg.com; s=api;
 c=relaxed/simple; t=1745905297;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post:
 mime-version; bh=HQyXmV8K2HdVYWQbwugXVNUPMG24KbSaOP7anaaFRdo=;
 b=mTmuSsxy4KX19XC4+Jwdqh24Z6gj+kn+/Gd1I5GKQ2YWL7Ic7GO1MoM9zRZivnAgE+3teHHBRdP
 T55DlB+aLC5pUnaA5Rcnie1segh7RR0SP8O7R9FYKahdGf5vOJdWDowwbpqV9o5aXTx+n3ycQBrn3
 zJHBoOPJbfwb7i15III=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1745905297;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post;
 bh=HQyXmV8K2HdVYWQbwugXVNUPMG24KbSaOP7anaaFRdo=;
 b=CftRPCiV/ronTeLAysq7ZcH3a2mJ8pqQgcY17H4t4yCz08aqYKjpsQjNtVrmnTqqi5f8oM2yZ7A
 x08XPRZrnlZKBFll3W2VU6JbTgVv5/iPswn+0lcMS1mnqh0/Ly92DJrfohlp/WLjfJmAbWkev4jkB
 agu6ygpQfroMyyAeFI4=
From: Lisa Yu <cnc@winhooa.getcnmfg.com>
Date: Tue, 29 Apr 2025 05:41:37 +0000
Message-Id: <4uq10x9pfrnb.mFIgznQygabjGatj5Nz_Pg2@tracking.winhooa.getcnmfg.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Msg-EID: mFIgznQygabjGatj5Nz_Pg2
MIME-Version: 1.0
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thank you for taking the time to read this email I am
 writing for you. As the Sales Director of WINHOO PRECISION, I wanted to reach
 out and express how much we value your business. We understand that you have
 a choice in selecting a CNC PRECISION PARTS MANUFACTURER, and [...] 
 Content analysis details:   (5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [67.227.85.226 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [67.227.85.226 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.227.85.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 URIBL_GREY             Contains an URL listed in the URIBL greylist
 [URIs: elasticemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.4 URIBL_CT_SURBL         Contains an URL listed in the CT SURBL blocklist
 [URIs: getcnmfg.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
X-Headers-End: 1u9dj0-0004bV-DB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?CNC_Machining_=E2=80=93_High_Precision?=
 =?utf-8?q?_=26_Flexible_Pricing?=
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
Reply-To: Lisa Yu <lisa@cncprecision-parts.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksClRoYW5rIHlvdSBmb3IgdGFraW5nIHRoZSB0aW1lIHRvIHJlYWQgdGhpcyBlbWFpbCBJIGFt
IHdyaXRpbmcgZm9yIHlvdS4KCkFzIHRoZSBTYWxlcyBEaXJlY3RvciBvZiBXSU5IT08gUFJFQ0lT
SU9OLCBJIHdhbnRlZCB0byByZWFjaCBvdXQgYW5kCmV4cHJlc3MgaG93IG11Y2ggd2UgdmFsdWUg
eW91ciBidXNpbmVzcy4KV2UgdW5kZXJzdGFuZCB0aGF0IHlvdSBoYXZlIGEgY2hvaWNlIGluIHNl
bGVjdGluZyBhIENOQyBQUkVDSVNJT04KUEFSVFMgTUFOVUZBQ1RVUkVSLCBhbmQgd2Ugd291bGQg
YmUgaG9ub3JlZCB0byBiZSB5b3VyIFRSVVNURUQKUEFSVE5FUi4KCkF0IFdJTkhPTyBQUkVDSVNJ
T04sIHdlIHByaWRlIG91cnNlbHZlcyBvbiBvdXIgU1RBVEUtT0YtVEhFLUFSVApFUVVJUE1FTlQs
IGluY2x1ZGluZyA2MCBBRFZBTkNFRCBNQUNISU5FUyB3aXRoIDQtQVhJUyBBTkQgNS1BWElTCkNB
UEFCSUxJVElFUy4KT3VyIFBSRUNJU0lPTiBFTkdJTkVFUklORyBURUFNIGlzIHNraWxsZWQgaW4g
YWNoaWV2aW5nIFRPTEVSQU5DRVMgQVMKVElHSFQgQVMgMC4wMDVNTSwgYW5kIHdlIGNhbiBoYW5k
bGUgVVJHRU5UIE9SREVSUyBXSVRIIEVBU0UuCgpXZSBwcm92aWRlIEZMRVhJQkxFIFBSSUNJTkcg
U09MVVRJT05TIGZvciBib3RoIFNNQUxMLUJBVENIIFBST1RPVFlQRVMKYW5kIExBUkdFLVNDQUxF
IFBST0RVQ1RJT04sIGVuc3VyaW5nIEhJR0ggUVVBTElUWSBBVCBDT01QRVRJVElWRQpDT1NUUy4K
T3VyIHRlYW0gaXMgY29tbWl0dGVkIHRvIGRlbGl2ZXJpbmcgdGhlIEhJR0hFU1QgTEVWRUwgT0Yg
U0VSVklDRSwgYW5kCndlIGNvbnRpbnVvdXNseSBzZWVrIHdheXMgdG8gaW1wcm92ZSBhbmQgYmV0
dGVyIG1lZXQgeW91ciBuZWVkcy4KClRoYW5rIHlvdSBmb3IgY29uc2lkZXJpbmcgV0lOSE9PIFBS
RUNJU0lPTiBhcyB5b3VyIENOQyBNQUNISU5JTkcKUEFSVE5FUi4KV2Ugd291bGQgYmUgdGhyaWxs
ZWQgdG8gd29yayB3aXRoIHlvdSBhbmQgZGVtb25zdHJhdGUgb3VyCmNhcGFiaWxpdGllcy4KUGxl
YXNlIGxldCB1cyBrbm93IGlmIHRoZXJlIGlzIGFueXRoaW5nIHdlIGNhbiBkbyB0byBhc3Npc3Qg
eW91LgoKQkVTVCBSRUdBUkRTLApMaXNhIFl1ClNhbGVzIE1hbmFnZXIKbGlzYUBjbmNwcmVjaWlz
aW9uLXBhcnRzLmNuCkhvbmdrb25nIFdpbmhvbyBwcmVjaXNpb24gY28uLEx0ZArCoCAKCiAJCVVu
c3Vic2NyaWJlClsvaHR0cDovL3RyYWNraW5nLndpbmhvb2EuZ2V0Y25tZmcuY29tL3RyYWNraW5n
L3Vuc3Vic2NyaWJlP2Q9azhnczVwUmxjM3AyUTN0aHdzYWduM1VIQ1R6MURfbEFSbmpzc0locXVy
dW94N2xmSndJT2ZFX2xtX0xoVk54SFZSS2NLX0t1YkppQU5XNEI3aVZxdDRpZ2J0RHpzMWFvcjJS
YWpHd3k3czRDczM1cXdVZzdBV21vcGt3NVc3VDFIejUtdVVBSmp6MC1ubFlVc1k5c3BobzJZMkZD
RWhpODdEOTA1MDZrRFZVWXlteGhOc2JBaDFsZlZVOWxJZEMyTFNGMEp3QTZEektpNGFmMzh4OWk2
NklFQ2dEUEFvVzgzS3RJWHlKa1A3clpOd293NFdJMnRJVlRmcHNzaS0wZ05qTUlCRDFUNjB2VTBU
aVhhM0lNMGVGVVRZUnNDYjBlM3NiVHpYVHV0UUo1RVoxWmNldUxYZGpfZFRqZkpQVGNTQ1YwSTdX
bld6NUJacjZHdkpfWmhkczdkd3owM3R1bUNOSmtZdzh4VmVySTZfTGUxVVp1UnZIZDRqdGY5QVFq
NTBWaEtycWlVS0dWWUQwMzVHWEotOEs5T3ZsdkZwcENnQ0RDVnBWbkJTMzFONEpLTFdiODRwOWpO
alVtandzSElxTlhUUWlseWFpTHF1bnp5RDNxMlNGQzluX3hzOHpmOHduZXV4LUV1QWhURWpVZlJ2
LXI1aHJRMjJsSEd6OTZEVWg1SXMydUJXVjgwd28waXhvN0FDTTc1THRoZW1fT0doVzNieWo5R0pp
dnBSUDVXRG9aaUpabmcySWVVS0xiZVEyXQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
