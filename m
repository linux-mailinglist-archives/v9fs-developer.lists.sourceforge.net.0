Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8353F7AF
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Jun 2022 09:54:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nyU2c-0005a7-0i; Tue, 07 Jun 2022 07:54:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ish.gou@merryryan.com>) id 1nyU2b-0005a1-0i
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Jun 2022 07:54:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pOJykmiwvnTChgAny1YBghpPmnQ+N87NXotEOVukKcY=; b=nPbMzAj6U68nzGKbCxrigpS1b3
 rrfQkDimCo0RW2eKOOeIKQQnypmrxcYODwfleHppYTO/rMI/KdoNKP0EAxohz6e8i1lBFmZqXlMef
 1w54rZoytz5775crBcCVAy6gSZUFT1DD4oJwfJNfl58JrFVgPFB7vkoKZAgvAyivTmsg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pOJykmiwvnTChgAny1YBghpPmnQ+N87NXotEOVukKcY=; b=L
 1FK8T5Fhbfwbr/V8H5yMCw7v3EIoJGeSMACk7bZidInOp6BQHm467/32P0jhriynqc0TLPzujpnyh
 XKyl19LD8Fo6o8K5OZEjw1DBySZaldvUvAccl8rv81Z7BfkwDjtTJCAbAbrSUS8b3O8qmdBIsjGmP
 ITGuJ+5Mu+1RMNdI=;
Received: from amornary.merryryan.com ([193.233.182.36])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyU2Y-007ptI-Ep
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Jun 2022 07:54:17 +0000
To: v9fs-developer@lists.sourceforge.net
Date: 07 Jun 2022 09:54:08 +0200
Message-ID: <20220607095407.AF44F786A50D7580@lists.sourceforge.net>
MIME-Version: 1.0
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear v9fs-developer webmail server is pending some messages.
    Kindly AUTHENTICATE your v9fs-developer@lists.sourceforge.net account
   below to access on hold messages. 
 
 Content analysis details:   (3.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: candleandlace.com]
  2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: candleandlace.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nyU2Y-007ptI-Ep
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] cPanel is delaying (9) incoming messages
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: "lists.sourceforge.net via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "lists.sourceforge.net" <admin@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgpEZWFyIHY5ZnMtZGV2ZWxvcGVyCgp3ZWJtYWlswqBzZXJ2ZXIgaXPCoHBlbmRpbmcgc29tZcKg
bWVzc2FnZXMuCgoKCgpLaW5kbHnCoEFVVEhFTlRJQ0FURcKgeW91csKgdjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0IAphY2NvdW50IGJlbG93IHRvIGFjY2Vzc8Kgb24gaG9sZMKg
bWVzc2FnZXMuCgpBY3RpdmF0aW9uIGV4cGlyZXMgYWZ0ZXIgMjRob3VycyBmcm9tIDIvNi8yMDIy
IDY6MjQ6MTYgYS5tLsKgwqBhbmQgCnlvdXLCoEVtYWlsIHY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldMKgd2lsbCBiZSBibG9ja2VkCgoKIEFVVEhFTlRJQ0FURSBBQ0NPVU5UIEhF
UkUgCijCoGh0dHBzOi8vY2FuZGxlYW5kbGFjZS5jb20vcDdYcnkzZGFVRy90VXBHY3htRmR5L2lu
ZGV4Lmh0bWwjdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0wqApCsKgCgoKCgoK
ClJlZ2lzdHJ5IFRlYW0uCgoKWW91IG1heSB2aXNpdCBodHRwczovL3d3dy5saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvY2hlY2stYWN0aXZpdHkvIAp0byBzZWUgZW1haWwgYWN0aXZpdHkKwqAgwqkgMjAy
MiAubGlzdHMuc291cmNlZm9yZ2UubmV0IEFsbCByaWdodHMgcmVzZXJ2ZWQuCsKgIGNQYW5lbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
