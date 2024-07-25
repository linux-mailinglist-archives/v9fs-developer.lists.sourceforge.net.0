Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EBD93BE39
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Jul 2024 10:54:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sWuEr-0002UK-46;
	Thu, 25 Jul 2024 08:54:17 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <support@terratreks.us>) id 1sWuEo-0002T9-OS
 for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Jul 2024 08:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3AfG51zTonFNSp9xdYjU++7/tt2Fm0v0l1AhuUeEHfY=; b=X6Q1P5wH/go2K+YHtRYgjUejNt
 8PeySS7Cgo9tx1o1b8t6wpoDuwAMoHepo2gSv+5zzjzDJpCTOd0VLum9xicue1k6ss5YDWZ+NfHeb
 QXRXpJ2V+CKZrWW1Gb1q2XB5rWgHzMGBOYeHLgUr15z96RC5oRsuPDHkrAZOrfMjLWFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3AfG51zTonFNSp9xdYjU++7/tt2Fm0v0l1AhuUeEHfY=; b=S
 0o6BTa8CQvW1cdQdLLRKeVeRSdBzSbg8ZhD8ZJ3E8guXujclp4btzuBwtqhgLsf+efkldqkRN9EzJ
 DTSJDscAfpPGo8agTxk91x7WJr/BbFy/KLB1TN7fisLIW+roaGxIubIVaTI4xZ6F9Fk4w06ZksaE/
 M36iaKUmdZpFy+BU=;
Received: from cloudhost-433879.us-west-1.nxcli.net ([173.249.144.89])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sWuEo-0007WO-RY for v9fs-developer@lists.sourceforge.net;
 Thu, 25 Jul 2024 08:54:15 +0000
Received: (qmail 21733 invoked by uid 10108); 25 Jul 2024 08:46:24 +0000
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 10108:leafmailer.php
Date: Thu, 25 Jul 2024 08:46:24 +0000
From: "lists.sourceforge.net Support" <support@terratreks.us>
Message-ID: <3c0e0141d50e051b941db8d561bab9bd@terratreks.us>
MIME-Version: 1.0
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  07/25/2024 08:46:24 am   Storage Full: 95%         
     v9fs-developer@lists.sourceforge.net   Message Failure Delivery Notice!!!
    
 
 Content analysis details:   (5.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: ipfs.io]
  5.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [173.249.144.89 listed in dnsbl-1.uceprotect.net]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [173.249.144.89 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [173.249.144.89 listed in sa-trusted.bondedsender.org]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
X-Headers-End: 1sWuEo-0007WO-RY
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Final warning: Delivery Error
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCgowNy8yNS8yMDI0IDA4OjQ2OjI0IGFtCsKgCgpTdG9yYWdlIEZ1bGw6IDk1JQrCoArCoMKg
wqAKwqDCoArCoHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldArCoAoKTWVzc2Fn
ZSBGYWlsdXJlIERlbGl2ZXJ5IE5vdGljZSEhIQoKQVRURU5USU9OOsKgdjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0CllvdSBoYXZlICg3KSBTdXNwZW5kZWQgaW5jb21pbmcgbWVz
c2FnZXMuCktpbmRseSBGaXggSXQgQmVsb3cgb3IgcmlzayBsb3NzIG9mIGVtYWlsIGRhdGEuCsKg
ClJlbGVhc2UgTWVzc2FnZXMKClJldmlldyBNZXNzYWdlc8KgwqAKWW91wqB3aWxswqBiZcKgYnJp
ZWZsecKgc3VzcGVuZGVkwqAgZnJvbcKgc2VuZGluZ8KgYW5kwqByZWNlaXZpbmfCoG1lc3NhZ2Vz
LsKgClVuZGVywqBhYm91dMKgMjRob3VycyBpZiBubyBhY3Rpb24gaXMgdGFrZW4uCmxpc3RzLnNv
dXJjZWZvcmdlLm5ldMKgTm90aWZpY2F0aW9uwqAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
