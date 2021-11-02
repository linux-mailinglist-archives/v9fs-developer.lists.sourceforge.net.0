Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6E0442BFF
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Nov 2021 11:59:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mhrWE-00014I-3D; Tue, 02 Nov 2021 10:59:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mhrWD-000148-Fv
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 10:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2ASguvbY+iXi8FjWwMvh7ZKXDX1Pp5+swkGc3FrzWmg=; b=k3eMl0ul6UZniztQlJpTwOGb8q
 4geOq4WBv2p3T/42RUOJO1HCPoKMG5ctXcJVNBfhcuvxlozLM0rKn4hAnbmdhEDSiKSxoSn+vfr1q
 G/e1RvTg9hraHAZAc4JaIe1UwyT2Ivlr10Dd0zfK++QseQtWu7geXyijZ6+ysqoz60ME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2ASguvbY+iXi8FjWwMvh7ZKXDX1Pp5+swkGc3FrzWmg=; b=IMksHQ++A8oxZkQkCFRJ/aYWnm
 xaWtYPv0RzkGldf+BAwMe1wioIxrswTHdybS9qrEYPHLTpq0S5Pe8iywvPRFPpTYgCTstL2YMiigZ
 mp8KUGpkf8IO8pdjCn3CoYws56ClyzPV6nVhc9OXlw6+cL8HRUKtz61c4iIkjYbbcEJs=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhrWA-0003pl-R5
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Nov 2021 10:59:52 +0000
Date: Tue, 2 Nov 2021 11:59:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1635850778;
 bh=EQgH6iFqsqRpn3YWDSWz+nzr9GGk1LqsgNBEiOd9Bno=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YOsujDQuLI5Pd5A72ogB7lsJe//g7lv4F5YHhFsroauupNNiSYRf3RnB3z3hImV1d
 jSzB/ucHxWr7yBQtfAr8cPdjktzgkQUlw7wcPYyucv3hdtlWK3fmGvjRDh4DUpipbb
 4mPVMzAS4ahegxuObHfWUhr1nYJdRED7cyGNQYLo=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <922a4843-c7b0-4cdc-b2a6-33bf089766e4@t-8ch.de>
References: <20211017134611.4330-1-linux@weissschuh.net>
 <YYEYMt543Hg+Hxzy@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YYEYMt543Hg+Hxzy@codewreck.org>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 2021-11-02 19:51+0900, Dominique Martinet wrote: >
   Sorry for the late reply > > Thomas Weißschuh wrote on Sun, Oct 17, 2021
   at 03:46:11PM +0200: > > Automatically load transport modules based on t [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: weissschuh.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mhrWA-0003pl-R5
Subject: Re: [V9fs-developer] [PATCH] net/9p: autoload transport modules
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpPbiAyMDIxLTExLTAyIDE5OjUxKzA5MDAsIERvbWluaXF1ZSBNYXJ0aW5ldCB3cm90ZToK
PiBTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHkKPiAKPiBUaG9tYXMgV2Vpw59zY2h1aCB3cm90ZSBv
biBTdW4sIE9jdCAxNywgMjAyMSBhdCAwMzo0NjoxMVBNICswMjAwOgo+ID4gQXV0b21hdGljYWxs
eSBsb2FkIHRyYW5zcG9ydCBtb2R1bGVzIGJhc2VkIG9uIHRoZSB0cmFucz0gcGFyYW1ldGVyCj4g
PiBwYXNzZWQgdG8gbW91bnQuCj4gPiBUaGUgcmVtb3ZlcyB0aGUgcmVxdWlyZW1lbnQgZm9yIHRo
ZSB1c2VyIHRvIGtub3cgd2hpY2ggbW9kdWxlIHRvIHVzZS4KPiAKPiBUaGlzIGxvb2tzIGdvb2Qg
dG8gbWUsIEknbGwgdGVzdCB0aGlzIGJyaWVmbHkgb24gZGlmZmVybmV0IGNvbmZpZyAoPXksCj4g
PW0pIGFuZCBzdWJtaXQgdG8gTGludXMgdGhpcyB3ZWVrIGZvciB0aGUgbmV4dCBjeWNsZS4KClRo
YW5rcy4gQ291bGQgeW91IGFsc28gZml4IHVwIHRoZSB0eXBvIGluIHRoZSBjb21taXQgbWVzc2Fn
ZSB3aGVuIGFwcGx5aW5nPwooIlRoZSByZW1vdmVzIiAtPiAiVGhpcyByZW1vdmVzIikKCj4gTWFr
ZXMgbWUgd29uZGVyIHdoeSB0cmFuc19mZCBpcyBpbmNsdWRlZCBpbiA5cG5ldCBhbmQgbm90IGlu
IGEgOXBuZXQtZmQKPiBvciA5cG5ldC10Y3AgbW9kdWxlIGJ1dCB0aGF0J2xsIGJlIGZvciBhbm90
aGVyIHRpbWUuLi4KClRvIHByZXBhcmUgZm9yIHRoZSBtb21lbnQgd2hlbiB0aG9zZSB0cmFuc3Bv
cnQgbW9kdWxlcyBhcmUgc3BsaXQgaW50byB0aGVpciBvd24KbW9kdWxlKHMpLCB3ZSBjb3VsZCBh
bHJlYWR5IGFkZCBNT0RVTEVfQUxJQVNfOVAoKSBjYWxscyB0byBuZXQvOXAvdHJhbnNfZmQuYy4K
ClRob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlm
cy1kZXZlbG9wZXIK
