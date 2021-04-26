Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C2636BB8E
	for <lists+v9fs-developer@lfdr.de>; Tue, 27 Apr 2021 00:17:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lb9Y1-0007ED-HO; Mon, 26 Apr 2021 22:17:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@kernel.org>) id 1lb9Y0-0007Dz-1T
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 22:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gEExMn0rtLjE0BZito8XJHyW5AxjDe096vKxUpO3UWk=; b=mpx2ELstw+ioSBeuX0JK8eh49C
 oMF19W3X2nH2pmOEhig8vWH5WwxOf/MQSVFejJPlqITcWQgWkxCrLq8I5JloMlss7x1poAcjLgTjO
 NZ+22RqJ0v3OoaVfgOXZXcrKEcIZW1UL9BluDqoIth6vuxL+D8bkVaX8tr9ARNokmFlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gEExMn0rtLjE0BZito8XJHyW5AxjDe096vKxUpO3UWk=; b=Rsy7g2UfxRPiefG3SUPl3ec76G
 4w0GCibX3ftgMuirWeYYAt6TwOheqwnsOtNj8xSGl9M8HtS+vbnie56X2NKg6KxcHFnX/f0Ng8mfH
 mG/WRaYpAePlPZ8qeeKnMr74NqmPvWXoOvvdUGuA2HcNMBaZSarzYx/IEe6B2Z3M2NUw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lb9Xu-0005oU-RH
 for v9fs-developer@lists.sourceforge.net; Mon, 26 Apr 2021 22:17:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8DE061009;
 Mon, 26 Apr 2021 22:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619475449;
 bh=ZkTO8awNTukHLk9VqklD7IV/aS8daeT3oHbCNCTlruU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=tGeZmm5EISAkX2zu0COUMzxEJ48ZzogTHl+MeQEq7QGqv1YyambEOCALAMAePQQf5
 G0DjczaE/HqOaQ9IhPkbBjfsRDMUm3W87ekpMw/LpHnXugv4v/EqZRQqBwQx5sSDmR
 WcOvU7DHQFwa3ytQE9iriTQso6Sj9qNTTwXleW5p6S4MShm41eqmHIVbvwYrHCh8hO
 gq0i8WEHCOt7I7PEjW0Rafeb8jswqx2ioAJEbSXZXRfuBuqw1yvcwgds5zm/FD0Oti
 mwdib8qqn/UnLtnnntGZsYoNW0YCsN9ovXQw4zcEELP1XxMS1jDMzQMAPOvPhsKMHT
 QVCM/neQJS2pw==
Message-ID: <728b55601fa54449cd43a35195641c00fbe6c096.camel@kernel.org>
From: Jeff Layton <jlayton@kernel.org>
To: David Howells <dhowells@redhat.com>, Matthew Wilcox <willy@infradead.org>
Date: Mon, 26 Apr 2021 18:17:26 -0400
In-Reply-To: <3737237.1619472003@warthog.procyon.org.uk>
References: <20210426210939.GS235567@casper.infradead.org>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <3726642.1619471184@warthog.procyon.org.uk>
 <3737237.1619472003@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.0 (3.40.0-1.fc34) 
MIME-Version: 1.0
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lb9Xu-0005oU-RH
Subject: Re: [V9fs-developer] [PATCH v2] netfs: Miscellaneous fixes
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, linux-mm@kvack.org,
 Dave Wysochanski <dwysocha@redhat.com>, linux-kernel@vger.kernel.org,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 Marc Dionne <marc.dionne@auristor.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCAyMDIxLTA0LTI2IGF0IDIyOjIwICswMTAwLCBEYXZpZCBIb3dlbGxzIHdyb3RlOgo+
IE9rYXksIGhvdyBhYm91dCB0aGUgYXR0YWNoZWQsIHRoZW4/Cj4gCj4gRGF2aWQKPiAtLS0KPiBu
ZXRmczogTWlzY2VsbGFuZW91cyBmaXhlcwo+IMKgwqDCoMKgCj4gCj4gCj4gCj4gRml4IHNvbWUg
bWlzY2VsbGFuZW91cyB0aGluZ3MgaW4gdGhlIG5ldyBuZXRmcyBsaWJbMV06Cj4gCj4gwqAoMSkg
VGhlIGtlcm5lbGRvYyBmb3IgbmV0ZnNfcmVhZHBhZ2UoKSBzaG91bGRuJ3Qgc2F5IG5ldGZzX3Bh
Z2UoKS4KPiAKPiDCoCgyKSBuZXRmc19yZWFkcGFnZSgpIGNhbiBnZXQgYW4gaW50ZWdlciBvdmVy
ZmxvdyBvbiAzMi1iaXQgd2hlbiBpdAo+IMKgwqDCoMKgwqBtdWx0aXBsaWVzIHBhZ2VfaW5kZXgo
cGFnZSkgYnkgUEFHRV9TSVpFLiAgSXQgc2hvdWxkIHVzZQo+IMKgwqDCoMKgwqBwYWdlX2ZpbGVf
b2Zmc2V0KCkgaW5zdGVhZC4KPiAKPiDCoCgzKSBuZXRmc193cml0ZV9iZWdpbigpIHNob3VsZCB1
c2UgcGFnZV9vZmZzZXQoKSB0byBhdm9pZCB0aGUgc2FtZQo+IMKgwqDCoMKgwqBvdmVyZmxvdy4K
PiAKPiBOb3RlIHRoYXQgbmV0ZnNfcmVhZHBhZ2UoKSBuZWVkcyB0byB1c2UgcGFnZV9maWxlX29m
ZnNldCgpIHJhdGhlciB0aGFuCj4gcGFnZV9vZmZzZXQoKSBhcyBpdCBtYXkgc2VlIHN3YXAtb3Zl
ci1ORlMuCj4gCj4gUmVwb3J0ZWQtYnk6IE1hdHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQu
b3JnPgo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+
Cj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8xNjE3ODkwNjIxOTAuNjE1NS4xMjcx
MTU4NDQ2NjMzODQ5MzA1MC5zdGdpdEB3YXJ0aG9nLnByb2N5b24ub3JnLnVrLyBbMV0KPiAtLS0K
PiDCoGZzL25ldGZzL3JlYWRfaGVscGVyLmMgfCAgICA2ICsrKy0tLQo+IMKgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZnMv
bmV0ZnMvcmVhZF9oZWxwZXIuYyBiL2ZzL25ldGZzL3JlYWRfaGVscGVyLmMKPiBpbmRleCAxZDNi
NTBjNWRiNmQuLjE5Mzg0MWQwM2RlMCAxMDA2NDQKPiAtLS0gYS9mcy9uZXRmcy9yZWFkX2hlbHBl
ci5jCj4gKysrIGIvZnMvbmV0ZnMvcmVhZF9oZWxwZXIuYwo+IEBAIC05MzMsNyArOTMzLDcgQEAg
dm9pZCBuZXRmc19yZWFkYWhlYWQoc3RydWN0IHJlYWRhaGVhZF9jb250cm9sICpyYWN0bCwKPiDC
oEVYUE9SVF9TWU1CT0wobmV0ZnNfcmVhZGFoZWFkKTsKPiDCoAo+IAo+IAo+IAo+IMKgLyoqCj4g
LSAqIG5ldGZzX3BhZ2UgLSBIZWxwZXIgdG8gbWFuYWdlIGEgcmVhZHBhZ2UgcmVxdWVzdAo+ICsg
KiBuZXRmc19yZWFkcGFnZSAtIEhlbHBlciB0byBtYW5hZ2UgYSByZWFkcGFnZSByZXF1ZXN0Cj4g
wqDCoCogQGZpbGU6IFRoZSBmaWxlIHRvIHJlYWQgZnJvbQo+IMKgwqAqIEBwYWdlOiBUaGUgcGFn
ZSB0byByZWFkCj4gwqDCoCogQG9wczogVGhlIG5ldHdvcmsgZmlsZXN5c3RlbSdzIG9wZXJhdGlv
bnMgZm9yIHRoZSBoZWxwZXIgdG8gdXNlCj4gQEAgLTk2OCw3ICs5NjgsNyBAQCBpbnQgbmV0ZnNf
cmVhZHBhZ2Uoc3RydWN0IGZpbGUgKmZpbGUsCj4gwqAJCXJldHVybiAtRU5PTUVNOwo+IMKgCX0K
PiDCoAlycmVxLT5tYXBwaW5nCT0gcGFnZV9maWxlX21hcHBpbmcocGFnZSk7Cj4gLQlycmVxLT5z
dGFydAk9IHBhZ2VfaW5kZXgocGFnZSkgKiBQQUdFX1NJWkU7Cj4gKwlycmVxLT5zdGFydAk9IHBh
Z2VfZmlsZV9vZmZzZXQocGFnZSk7Cj4gwqAJcnJlcS0+bGVuCT0gdGhwX3NpemUocGFnZSk7Cj4g
wqAKPiAKPiAKPiAKPiDCoAlpZiAob3BzLT5iZWdpbl9jYWNoZV9vcGVyYXRpb24pIHsKPiBAQCAt
MTEwNiw3ICsxMTA2LDcgQEAgaW50IG5ldGZzX3dyaXRlX2JlZ2luKHN0cnVjdCBmaWxlICpmaWxl
LCBzdHJ1Y3QgYWRkcmVzc19zcGFjZSAqbWFwcGluZywKPiDCoAlpZiAoIXJyZXEpCj4gwqAJCWdv
dG8gZXJyb3I7Cj4gwqAJcnJlcS0+bWFwcGluZwkJPSBwYWdlLT5tYXBwaW5nOwo+IC0JcnJlcS0+
c3RhcnQJCT0gcGFnZS0+aW5kZXggKiBQQUdFX1NJWkU7Cj4gKwlycmVxLT5zdGFydAkJPSBwYWdl
X29mZnNldChwYWdlKTsKPiDCoAlycmVxLT5sZW4JCT0gdGhwX3NpemUocGFnZSk7Cj4gwqAJcnJl
cS0+bm9fdW5sb2NrX3BhZ2UJPSBwYWdlLT5pbmRleDsKPiDCoAlfX3NldF9iaXQoTkVURlNfUlJF
UV9OT19VTkxPQ0tfUEFHRSwgJnJyZXEtPmZsYWdzKTsKPiAKClJldmlld2VkLWJ5OiBKZWZmIExh
eXRvbiA8amxheXRvbkBrZXJuZWwub3JnPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
