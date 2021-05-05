Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84834373E74
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 May 2021 17:24:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1leJOR-00089m-5D; Wed, 05 May 2021 15:24:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkml@metux.net>) id 1leJOP-00089O-G9
 for v9fs-developer@lists.sourceforge.net; Wed, 05 May 2021 15:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kYjTyyZZmTqEBpHcuqem3za004IHZ5mGCMRVsBBUlKQ=; b=m6FfInHQLWfLq16kMCSmgU1S50
 a0yYf2AQmAdExxVhGmvIpQJGk8MFfbsYmx/CpuzcDYd/P0hgZQ574ADpXnUCG4vNUhCkGPSIi1Hp0
 0JaW3P+ETopeHLC8BSHLtObdJ7kCLsoFvHOq4afeqR/FPIwPsWVgNjHwOXqmuS7kDF6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kYjTyyZZmTqEBpHcuqem3za004IHZ5mGCMRVsBBUlKQ=; b=K+4tfjmIGOwxGDphEmo8BSYzOZ
 bkijhlAN14902HcPASKm/L0+tnsrjNnMDTtD9NaGP3HJntj3n4dQBis18QMFHELBb5VYGDVqbZQe+
 TFRVvEXC3tlnqWnSHBXrGM9un5Fma/vgwuGtmjviu5v/uWutPA82u1+qXDmiGpJkwaP0=;
Received: from mout.kundenserver.de ([217.72.192.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1leJOG-000ylM-2a
 for v9fs-developer@lists.sourceforge.net; Wed, 05 May 2021 15:24:53 +0000
Received: from [192.168.1.155] ([95.114.117.51]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MqJZl-1l930v2rat-00nNc8; Wed, 05 May 2021 17:10:54 +0200
To: Dominique Martinet <asmadeus@codewreck.org>,
 Changbin Du <changbin.du@gmail.com>
References: <20210505120748.8622-1-changbin.du@gmail.com>
 <20210505120748.8622-2-changbin.du@gmail.com>
 <YJKUqj5hY3q+qOia@codewreck.org>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Message-ID: <6c5a569a-4b4a-4aef-f32e-1832dc8936e6@metux.net>
Date: Wed, 5 May 2021 17:10:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YJKUqj5hY3q+qOia@codewreck.org>
Content-Language: tl
X-Provags-ID: V03:K1:LeoXAO/EDnIbZUmqFpAY/qXMmLkUnzipnG0qIG3v7etZ51RoSWC
 9AZKzGFbv6Awb93Jntax/RxRIf8ETvzH7C8nIy3gyUQJ6WD8iN+x5OzCN2pDER8ytsI/b0o
 fjIt8PSx7vtlkycVXd21XM+y6Ve9D9EeMzf23lHfiGQ7eTD+X2XFM8ScOL877Xf7aJWXwHk
 VK+DZjcHzOTmXMiun4Gqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PYlueinfNh0=:44CmjKGLmB/OUhLXYJRCdX
 u3egyLNDMElbkwsK0+BCHxuzx1EDrt216ubykEK1pNPDdTyhmov0LKz9TOm6KivByTWMm5U5X
 tXoTrmII/OCmUPpKlR1KRk11g5PXxi7Qtx9E6gKOVZV6UOTq5cJCjrpoVAITLNSaOi39xV1jz
 9bon8dXuxhG+SgvZLwknlHBgJgptq6eFAXignDVFuQeNaNcYzFg3+e1mlS+B/cN+tP+1KKGxk
 u6rrfVI7CxVNyB6xhoIlYlAaRoHkIuKdCWTtwqg2Tj2sDn72uR7Kx1yOGMNqkrL/1/2kFzPF6
 CKmuoJvtamrovxRPPdVhygS239WeAqqMPUS2FjY0LrppN1gw38OHHfb/U3n5VjZ6Cz/G5FOb7
 1soTzFbUI4tNQBqRF27P9D9TzXyqvJXHdgQTxoT2thC2uXLcmeW2j7UHo7C2/Jdp7gV+hZjK0
 uFe+zLxPKlpvTBpxw3IVxT37/bz05PzaSsrLpQAwr7I2VDiW3T4mJlJWZQGd/XAAxoZoA8X2l
 Li1hI1sugg0K7OI5dAhgL0=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: metux.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [217.72.192.74 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1leJOG-000ylM-2a
Subject: Re: [V9fs-developer] [PATCH 1/3] 9p: add support for root file
 systems
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-doc@vger.kernel.org,
 Eric Van Hensbergen <ericvh@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gMDUuMDUuMjEgMTQ6NTAsIERvbWluaXF1ZSBNYXJ0aW5ldCB3cm90ZToKCj4gQXMgYSB3aG9s
ZSBmb3IgdGhlIHNlcmllczogSSdtIHBlcnNvbmFsbHkgbm90IHN1cmUgSSdkIGVuY291cmFnZSB0
aGlzLAo+IGl0IGNhbiBjdXJyZW50bHkgYmUgZG9uZSB3aXRoIGFuIGluaXRyZCBpZiBzb21lb25l
IGNhcmVzIGVub3VnaCBhbmQgaWYKPiB3ZSdyZSBnb2luZyB0byBhZGQgYWxsIHJlbW90ZSBmaWxl
c3lzdGVtcyB0aGF0IHdheSB0aGVyZSdzIGdvaW5nIHRvIGJlCj4gbm8gZW5kIHRvIGl0LgoKcGVy
c29uYWxseSwgSSdkIGJlICp2ZXJ5KiBpbnRlcmVzdGVkIGluIHRoYXQsIGVzcGVjaWFsbHkgZm9y
IHNwZWNpYWxseQp0YWlsb3JlZCB2bSBncmlkIHdvcmtsb2Fkcy4gcGxlYXNlIGtlZXAgbWUgaW4g
dGhlIGxvb3AuCgoKLS1tdHgKCi0tIAotLS0KSGlud2VpczogdW52ZXJzY2hsw7xzc2VsdGUgRS1N
YWlscyBrw7ZubmVuIGxlaWNodCBhYmdlaMO2cnQgdW5kIG1hbmlwdWxpZXJ0CndlcmRlbiAhIEbD
vHIgZWluZSB2ZXJ0cmF1bGljaGUgS29tbXVuaWthdGlvbiBzZW5kZW4gU2llIGJpdHRlIGlocmVu
CkdQRy9QR1AtU2NobMO8c3NlbCB6dS4KLS0tCkVucmljbyBXZWlnZWx0LCBtZXR1eCBJVCBjb25z
dWx0CkZyZWUgc29mdHdhcmUgYW5kIExpbnV4IGVtYmVkZGVkIGVuZ2luZWVyaW5nCmluZm9AbWV0
dXgubmV0IC0tICs0OS0xNTEtMjc1NjUyODcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
