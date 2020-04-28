Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FBB1BC86E
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Apr 2020 20:33:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jTV39-0005gN-22; Tue, 28 Apr 2020 18:33:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <corbet@lwn.net>) id 1jTV34-0005g1-7L
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Apr 2020 18:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A+eXJavhK0jQXXosqLcnKYPOpRoG0mIWH5NHf4xkTFE=; b=OHtFohfLqLu6rJkWODZV6bKQiW
 qnDZRWm7/da78LfQeos6w7IrLKpblu9yMmLW56k+o1OBEZPK765cakWGNqE6+Skd1DWbEhpojCQac
 uniHZZzI5ZmNpVGkwfS+Td0d10wntlBJiTwsoNpXE3HdTvFZQg0s0SsIFy0WlTOzHlVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A+eXJavhK0jQXXosqLcnKYPOpRoG0mIWH5NHf4xkTFE=; b=nUbjOtsyUilFJSlZG+BtESn9bh
 XMTkLGAc8U19O9EYpaKwt6bfQABtwgudNYEa/a9xSH8FdDsIpt6i4yaerqIW0t1tBF9a3hCOOt0li
 InHZnmcGClhJB2gdcJ00UgBg4kBHDWCE7F1itlhhdEAbcm3eOWMlzPGlpmNynxgY7bwA=;
Received: from ms.lwn.net ([45.79.88.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jTV30-001MRj-MH
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Apr 2020 18:33:38 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id AB7DA44A;
 Tue, 28 Apr 2020 18:33:25 +0000 (UTC)
Date: Tue, 28 Apr 2020 12:33:24 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Juan Manuel =?UTF-8?B?TcOpbmRleg==?= Rey <vejeta@gmail.com>
Message-ID: <20200428123324.7406f340@lwn.net>
In-Reply-To: <20200426015250.GA35090@camelot>
References: <20200426015250.GA35090@camelot>
Organization: LWN.net
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bell-labs.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jTV30-001MRj-MH
Subject: Re: [V9fs-developer] [PATCH] Update the documentation referencing
 Plan 9 from User Space.
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-doc@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gU3VuLCAyNiBBcHIgMjAyMCAwMzo1Mjo1MCArMDIwMApKdWFuIE1hbnVlbCBNw6luZGV6IFJl
eSA8dmVqZXRhQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IFRoZSBwYWdlIG9yaWdpbmFsbHkgcmVmZXJl
bmNlZCB0byBjaGVja291dCBQbGFuOSBhcHBsaWNhdGlvbiBhbmQgbGlicmFyaWVzCj4gaGF2ZSBi
ZWVuIG1pc3NpbmcgZm9yIHF1aXRlIHNvbWUgdGltZSBhbmQgdGhlIGRldmVsb3BtZW50IGlzIGNh
cnJpZWQgb3V0Cj4gaW4gZ2l0aHViIGFuZCBkb2N1bWVudGVkIG9uIHRoaXMgbmV3IHNpdGUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogSnVhbiBNYW51ZWwgTcOpbmRleiBSZXkgPHZlamV0YUBnbWFpbC5j
b20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvOXAucnN0IHwgMiArLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy85cC5yc3QgYi9Eb2N1bWVudGF0aW9uL2Zp
bGVzeXN0ZW1zLzlwLnJzdAo+IGluZGV4IDY3MWZlZjM5YTgwMi4uMjk5NTI3OWRkYzI0IDEwMDY0
NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvOXAucnN0Cj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9maWxlc3lzdGVtcy85cC5yc3QKPiBAQCAtMTkyLDQgKzE5Miw0IEBAIEZvciBtb3Jl
IGluZm9ybWF0aW9uIG9uIHRoZSBQbGFuIDkgT3BlcmF0aW5nIFN5c3RlbSBjaGVjayBvdXQKPiAg
aHR0cDovL3BsYW45LmJlbGwtbGFicy5jb20vcGxhbjkKPiAgCj4gIEZvciBpbmZvcm1hdGlvbiBv
biBQbGFuIDkgZnJvbSBVc2VyIFNwYWNlIChQbGFuIDkgYXBwbGljYXRpb25zIGFuZCBsaWJyYXJp
ZXMKPiAtcG9ydGVkIHRvIExpbnV4L0JTRC9PU1gvZXRjKSBjaGVjayBvdXQgaHR0cDovL3N3dGNo
LmNvbS9wbGFuOQo+ICtwb3J0ZWQgdG8gTGludXgvQlNEL09TWC9ldGMpIGNoZWNrIG91dCBodHRw
czovLzlmYW5zLmdpdGh1Yi5pby9wbGFuOXBvcnQvCgpBcHBsaWVkLCB0aGFua3MuCgpqb24KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
