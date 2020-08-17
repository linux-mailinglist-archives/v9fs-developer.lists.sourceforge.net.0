Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D0424744B
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Aug 2020 21:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kNw+DWjMJq2I2nDgcMdNrZZzUjFk685wg+r7sA3KCgo=; b=ZrP/UsODkbqBG45dJcTNjcS8dI
	Ty0tFQK7t+tERu8onNvWMPW22esPHzMVLyyXeK7QnyFJBkeb5t1i0qfGp9OA0vRZ1a6d1u7U5OLKO
	1iruWPXKQmRO8AKNLO7bcx9bOE3cRZiDqw53lKbWtWEstNp+kdcH7bKI5O/1/oQAPNpk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k7kUF-0007Pt-HK; Mon, 17 Aug 2020 19:08:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sfrench@samba.org>) id 1k7kUE-0007PM-0U
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Aug 2020 19:08:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CIJRHx355gNSCr+djNZUa3YwUOfj5baupHLNqczQwkI=; b=SlAsEOu/H1ndnM2xn4wgKzKsU8
 8KKWmPHcmuuSsJ4sdxL09Hp3ZLg+yWV8js/9ZSYtC5YyeP1Gol/90V9Mi7zLVgHxUBAP8LdeG5LmX
 EotGEEGX2N4/ZoHiuG4Xao1gGOCal80ceqLkJmI7PtX04o+9dXyMQHaTqcslzD//y/Qw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CIJRHx355gNSCr+djNZUa3YwUOfj5baupHLNqczQwkI=; b=iczBboqBfQvlQzJlSNd9doFhV7
 UAX3fVjI7+OWAuwmQrpDUk+v/zqJHotCBmsVBQD2nMvYr2DaNRCu7nKr/TckGg3uFK3nQ51ZhnHx8
 4lv4dFBrT1Doe0p57ssZRY36otwFPLiFPD4MUYAnDuNSZeQKd8Vb8oEPP+4cy/vRBy3s=;
Received: from hr2.samba.org ([144.76.82.148])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k7kU9-00AY0T-MK
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Aug 2020 19:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=samba.org; 
 s=42; h=Date:Message-ID:From:Cc:To;
 bh=CIJRHx355gNSCr+djNZUa3YwUOfj5baupHLNqczQwkI=; b=SYqByI9pwq1dlpVLlp3gloDq+b
 nCykLXBu97LNWMWl+wfkSgqjOBYcveKWR4QhzUPWTrfSf79t30xNBkfyILCdm6f/EBO3rDLFzoGmK
 aJ3JTx9mrmP1tBjlJFzphvk2OS8SSRWnkxuRcg4Wu5HELLq6KJYdQI22nF6MpAAlyAlZu2czMWjKE
 cvh/rmtRllfdBscpciPs2gIsp/7lX+nhnUFAyZlmZrsfP7PV9gl3bv1H9KQnBmD3zIEB2egK92m9S
 AZ8AnroaxXhfmFGvZhIkVqVl3xxSHWxROBdozzjgYL+KgniiKF0cTV8zsqAe68npX++StWb4n98II
 LcjxaAHuLIPRtlmrWhfNo0d84y3JyTcPHqz3IaRhDeHqSqV7T39ctR0bSyvyUqjUpkV3FNjQyeAyx
 sG59QyhuRi/A+tV9Tx+ZR6BZZYxZLIERCxB7WTFBsKvp3iPwoUxa0xBWYtyhhT5OSTZhCz2lw/Bfx
 soqBKVojTBrXhsXpzdrTzMFu;
Received: from [127.0.0.2] (localhost [127.0.0.1])
 by hr2.samba.org with esmtpsa (TLS1.3:ECDHE_RSA_CHACHA20_POLY1305:256)
 (Exim) id 1k7kU0-0005ga-CN; Mon, 17 Aug 2020 19:07:48 +0000
To: Jeff Layton <jlayton@redhat.com>, David Wysochanski
 <dwysocha@redhat.com>, David Howells <dhowells@redhat.com>
References: <447452.1596109876@warthog.procyon.org.uk>
 <1851200.1596472222@warthog.procyon.org.uk>
 <667820.1597072619@warthog.procyon.org.uk>
 <CAH2r5msKipj1exNUDaSUN7h0pjanOenhSg2=EWYMv_h15yKtxg@mail.gmail.com>
 <672169.1597074488@warthog.procyon.org.uk>
 <CALF+zO=DkGmNDrrr-WxU6L1Xw8MA4+NrqVbvNMctwSKjy0Yh_w@mail.gmail.com>
 <fecc577d696f9cd58bbb2fae437c8acea170f7bf.camel@redhat.com>
Message-ID: <dfa2aede-3a42-2b04-1d31-93a670a785cc@samba.org>
Date: Mon, 17 Aug 2020 14:07:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fecc577d696f9cd58bbb2fae437c8acea170f7bf.camel@redhat.com>
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1k7kU9-00AY0T-MK
Subject: Re: [V9fs-developer] [GIT PULL] fscache rewrite -- please drop for
 now
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
From: Steven French via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Steven French <sfrench@samba.org>
Cc: CIFS <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Eric Van Hensbergen <ericvh@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <smfrench@gmail.com>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Ck9uIDgvMTAvMjAgMTI6MDYgUE0sIEplZmYgTGF5dG9uIHdyb3RlOgo+IE9uIE1vbiwgMjAyMC0w
OC0xMCBhdCAxMjozNSAtMDQwMCwgRGF2aWQgV3lzb2NoYW5za2kgd3JvdGU6Cj4+IE9uIE1vbiwg
QXVnIDEwLCAyMDIwIGF0IDExOjQ4IEFNIERhdmlkIEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5j
b20+IHdyb3RlOgo+Pj4gU3RldmUgRnJlbmNoIDxzbWZyZW5jaEBnbWFpbC5jb20+IHdyb3RlOgo+
Pj4KPj4+PiBjaWZzLmtvIGFsc28gY2FuIHNldCByc2l6ZSBxdWl0ZSBzbWFsbCAoZXZlbiAxSyBm
b3IgZXhhbXBsZSwgYWx0aG91Z2gKPj4+PiB0aGF0IHdpbGwgYmUgbW9yZSB0aGFuIDEweCBzbG93
ZXIgdGhhbiB0aGUgZGVmYXVsdCA0TUIgc28gaG9wZWZ1bGx5IG5vCj4+Pj4gb25lIGlzIGNyYXp5
IGVub3VnaCB0byBkbyB0aGF0KS4KPj4+IFlvdSBjYW4gc2V0IHJzaXplIDwgUEFHRV9TSVpFPwo+
Pj4KPj4+PiBJIGNhbid0IGltYWdpbmUgYW4gU01CMyBzZXJ2ZXIgbmVnb3RpYXRpbmcgYW4gcnNp
emUgb3Igd3NpemUgc21hbGxlciB0aGFuCj4+Pj4gNjRLIGluIHRvZGF5J3Mgd29ybGQgKGFuZCB0
eXBpY2FsIGlzIDFNQiB0byA4TUIpIGJ1dCB0aGUgdXNlciBjYW4gc3BlY2lmeSBhCj4+Pj4gbXVj
aCBzbWFsbGVyIHJzaXplIG9uIG1vdW50LiAgSWYgNjRLIGlzIGFuIGFkZXF1YXRlIG1pbmltdW0s
IHdlIGNvdWxkIGNoYW5nZQo+Pj4+IHRoZSBjaWZzIG1vdW50IG9wdGlvbiBwYXJzaW5nIHRvIHJl
cXVpcmUgYSBjZXJ0YWluIG1pbmltdW0gcnNpemUgaWYgZnNjYWNoZQo+Pj4+IGlzIHNlbGVjdGVk
Lgo+Pj4gSSd2ZSBib3Jyb3dlZCB0aGUgMjU2SyBncmFudWxlIHNpemUgdXNlZCBieSB2YXJpb3Vz
IEFGUyBpbXBsZW1lbnRhdGlvbnMgZm9yCj4+PiB0aGUgbW9tZW50LiAgQSA1MTItYnl0ZSB4YXR0
ciBjYW4gdGh1cyBob2xkIGEgYml0bWFwIGNvdmVyaW5nIDFHIG9mIGZpbGUKPj4+IHNwYWNlLgo+
Pj4KPj4+Cj4+IElzIGl0IHBvc3NpYmxlIHRvIG1ha2UgdGhlIGdyYW51bGUgc2l6ZSBjb25maWd1
cmFibGUsIHRoZW4gcmVqZWN0IGEKPj4gcmVnaXN0cmF0aW9uIGlmIHRoZSBzaXplIGlzIHRvbyBz
bWFsbCBvciBub3QgYSBwb3dlciBvZiAyPyAgVGhlbiBhCj4+IG5ldGZzIHVzaW5nIHRoZSBBUEkg
Y291bGQgdHJ5IHRvIHNldCBlcXVhbCB0byByc2l6ZSwgYW5kIHRoZW4gZXJyb3IKPj4gb3V0IHdp
dGggYSBtZXNzYWdlIGlmIHRoZSByZWdpc3RyYXRpb24gd2FzIHJlamVjdGVkLgo+Pgo+IC4uLm9y
IG1heWJlIHdlIHNob3VsZCBqdXN0IG1ha2UgZnNjYWNoZSBpbmNvbXBhdGlibGUgd2l0aCBhbgo+
IHJzaXplIHRoYXQgaXNuJ3QgYW4gZXZlbiBtdWx0aXBsZSBvZiAyNTZrPyBZb3UgbmVlZCB0byBz
ZXQgbW91bnQgb3B0aW9ucwo+IGZvciBib3RoLCB0eXBpY2FsbHksIHNvIGl0IHdvdWxkIGJlIGZh
aXJseSB0cml2aWFsIHRvIGNoZWNrIHRoaXMgYXQKPiBtb3VudCB0aW1lLCBJJ2QgdGhpbmsuCgoK
WWVzIC0gaWYgZnNjYWNoZSBpcyBzcGVjaWZpZWQgb24gbW91bnQgaXQgd291bGQgYmUgZWFzeSB0
byByb3VuZCByc2l6ZSAKdXAgKG9yIGRvd24pLCBhdCBsZWFzdCBmb3IgY2lmcy5rbyAocGVyaGFw
cyBzaW1wbHkgaW4gdGhlIG1vdW50LmNpZnMgCmhlbHBlciBzbyBhIHdhcm5pbmcgY291bGQgYmUg
cmV0dXJuZWQgdG8gdGhlIHVzZXIpIHRvIHdoYXRldmVyIGJvdW5kYXJ5IAp5b3UgcHJlZmVyIGlu
IGZzY2FjaGUuwqDCoCBUaGUgZGVmYXVsdCBvZiA0TUIgKG9yIDFNQiBmb3IgbW91bnRzIHRvIHNv
bWUgCm9sZGVyIHNlcnZlcnMpIHNob3VsZCBiZSBmaW5lLsKgIFNpbWlsYXJseSBpZiB0aGUgdXNl
ciByZXF1ZXN0ZWQgdGhlIApkZWZhdWx0IGJ1dCB0aGUgc2VydmVyIG5lZ290aWF0ZWQgYW4gdW51
c3VhbCBzaXplLCBub3QgYSBtdWx0aXBsZSBvZiAKMjU2Sywgd2UgY291bGQgcm91bmQgdHJ5IHRv
IHJvdW5kIGl0IGRvd24gaWYgcG9zc2libGUgKG9yIGZhaWwgdGhlIG1vdW50IAppZiBub3QgcG9z
c2libGUgdG8gcm91bmQgaXQgZG93biB0byAyNTZLKS4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
