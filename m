Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D85827C4
	for <lists+v9fs-developer@lfdr.de>; Tue,  6 Aug 2019 00:54:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hulsM-0000zM-GF; Mon, 05 Aug 2019 22:54:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>) id 1hulsL-0000z2-EG
 for v9fs-developer@lists.sourceforge.net; Mon, 05 Aug 2019 22:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=su7Un7Lsr0IB37YVHfSyk5WWru26t8lLPZpTgkOrxAY=; b=WnEwl66IHuhK1e+IuZ+dJ1oEpz
 gmguUcQkkVS98kKBeNQCfuTZOCRipBxGED8JKSUqPOc3RFJ1od9diBwJC62j0RsLCus4x7adIwQyM
 sxVWHeBS3IBpt9Gd4PHmo9O0coLgxxOZUTV61sy8VkDHq55CwcpKmNSuTJAjCqhfwl9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=su7Un7Lsr0IB37YVHfSyk5WWru26t8lLPZpTgkOrxAY=; b=K5g9uRW1RX4zU2DQufdqF/WI01
 jJ+LtBdx+PyxLh/i5e+0hCnjUEbOxRMD+YMkwOsq4RliROEbUaND6Ri54a20c0dQH8qc1Bgu2a2F3
 mtu6/F/0wo71FfaXzvzRvykVhjKre29BrBUlYoD4pWU0DQkpsudCHDyauD+0ARlF4g98=;
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hulsJ-00Beqg-34
 for v9fs-developer@lists.sourceforge.net; Mon, 05 Aug 2019 22:54:45 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d48b3b50000>; Mon, 05 Aug 2019 15:54:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 05 Aug 2019 15:54:36 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 05 Aug 2019 15:54:36 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 5 Aug
 2019 22:54:35 +0000
To: Christoph Hellwig <hch@infradead.org>, <john.hubbard@gmail.com>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724061750.GA19397@infradead.org>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <c35aa2bf-c830-9e57-78ca-9ce6fb6cb53b@nvidia.com>
Date: Mon, 5 Aug 2019 15:54:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724061750.GA19397@infradead.org>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565045686; bh=su7Un7Lsr0IB37YVHfSyk5WWru26t8lLPZpTgkOrxAY=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=MABsVuv2G9BzGpy+DkzIhxi90zmgNTMYOagd/ashPLcDOi2sWU6YznkbyPDv/xcq/
 O5RFeXAwmCAh/JO0LO+ze2NEhPe2n+psweVYXa8pjERXCCCfGYTxQ9SDkc4s4KNR59
 NLyb52q+/1fN+RE5h7a69JZCsNpaL7gcHJobrCC7E9UqWrmG9ACN7VwIX7DKaTA/Rb
 eRaFep1AoazjTxyXxT6Tx1JQhDVjP38m4xzwGlHYvs4ZQCYA68yceeG7xda5nxeUcP
 Q7wlfmFbcUA/T+jBVHNbqmQyCuHaQMhgKiqtQK78vKYLrwPUcmbghr4B0X7IdrZjfb
 e4QZrUIdtNMcg==
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hulsJ-00Beqg-34
Subject: Re: [V9fs-developer] [PATCH 00/12] block/bio,
 fs: convert put_page() to put_user_page*()
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, kvm@vger.kernel.org,
 "Michael S . Tsirkin" <mst@redhat.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 v9fs-developer@lists.sourceforge.net, Jason Wang <jasowang@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David
 S . Miller" <davem@davemloft.net>, linux-fsdevel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gNy8yMy8xOSAxMToxNyBQTSwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6Cj4gT24gVHVlLCBK
dWwgMjMsIDIwMTkgYXQgMDk6MjU6MDZQTSAtMDcwMCwgam9obi5odWJiYXJkQGdtYWlsLmNvbSB3
cm90ZToKPj4gKiBTdG9yZSwgaW4gdGhlIGlvdl9pdGVyLCBhICJjYW1lIGZyb20gZ3VwIChnZXRf
dXNlcl9wYWdlcykiIHBhcmFtZXRlci4KPj4gICBUaGVuLCB1c2UgdGhlIG5ldyBpb3ZfaXRlcl9n
ZXRfcGFnZXNfdXNlX2d1cCgpIHRvIHJldHJpZXZlIGl0IHdoZW4KPj4gICBpdCBpcyB0aW1lIHRv
IHJlbGVhc2UgdGhlIHBhZ2VzLiBUaGF0IGFsbG93cyBjaG9vc2luZyBiZXR3ZWVuIHB1dF9wYWdl
KCkKPj4gICBhbmQgcHV0X3VzZXJfcGFnZSooKS4KPj4KPj4gKiBQYXNzIGluIG9uZSBtb3JlIHBp
ZWNlIG9mIGluZm9ybWF0aW9uIHRvIGJpb19yZWxlYXNlX3BhZ2VzOiBhICJmcm9tX2d1cCIKPj4g
ICBwYXJhbWV0ZXIuIFNpbWlsYXIgdXNlIGFzIGFib3ZlLgo+Pgo+PiAqIENoYW5nZSB0aGUgYmxv
Y2sgbGF5ZXIsIGFuZCBzZXZlcmFsIGZpbGUgc3lzdGVtcywgdG8gdXNlCj4+ICAgcHV0X3VzZXJf
cGFnZSooKS4KPiAKPiBJIHRoaW5rIHdlIGNhbiBkbyB0aGlzIGluIGEgc2ltcGxlIGFuZCBiZXR0
ZXIgd2F5LiAgV2UgaGF2ZSA1IElURVJfKgo+IHR5cGVzLiAgT2YgdGhvc2UgSVRFUl9ESVNDQVJE
IGFzIHRoZSBuYW1lIHN1Z2dlc3RzIG5ldmVyIHVzZXMgcGFnZXMsIHNvCj4gd2UgY2FuIHNraXAg
aGFuZGxpbmcgaXQuICBJVEVSX1BJUEUgaXMgcmVqZWN0ZWQg0ZZuIHRoZSBkaXJlY3QgSS9PIHBh
dGgsCj4gd2hpY2ggbGVhdmVzIHVzIHdpdGggdGhyZWUuCj4gCgpIaSBDaHJpc3RvcGgsCgpBcmUg
eW91IHdvcmtpbmcgb24gYW55dGhpbmcgbGlrZSB0aGlzPyBPciBvbiB0aGUgcHV0X3VzZXJfYnZl
YygpIGlkZWE/ClBsZWFzZSBsZXQgbWUga25vdywgb3RoZXJ3aXNlIEknbGwgZ28gaW4gYW5kIGlt
cGxlbWVudCBzb21ldGhpbmcgaGVyZS4KCgp0aGFua3MsCi0tIApKb2huIEh1YmJhcmQKTlZJRElB
Cgo+IE91dCBvZiB0aG9zZSBJVEVSX0JWRUMgbmVlZHMgYSB1c2VyIHBhZ2UgcmVmZXJlbmNlLCBz
byB3ZSB3YW50IHRvIGNhbGwKPiBwdXRfdXNlcl9wYWdlKiBvbiBpdC4gIElURVJfQlZFQyBhbHdh
eXMgYWxyZWFkeSBoYXMgcGFnZSByZWZlcmVuY2UsCj4gd2hpY2ggbWVhbnMgaW4gdGhlIGJsb2Nr
IGRpcmVjdCBJL08gcGF0aCBwYXRoIHdlIGFscmVhZCBkb24ndCB0YWtlCj4gYSBwYWdlIHJlZmVy
ZW5jZS4gIFdlIHNob3VsZCBleHRlbnQgdGhhdCBoYW5kbGluZyB0byBhbGwgb3RoZXIgY2FsbHMK
PiBvZiBpb3ZfaXRlcl9nZXRfcGFnZXMgLyBpb3ZfaXRlcl9nZXRfcGFnZXNfYWxsb2MuICBJIHRo
aW5rIHdlIHNob3VsZAo+IGp1c3QgcmVqZWN0IElURVJfS1ZFQyBmb3IgZGlyZWN0IEkvTyBhcyB3
ZWxsIGFzIHdlIGhhdmUgbm8gdXNlcnMgYW5kCj4gaXQgaXMgcmF0aGVyIHBvaW50bGVzcy4gIEFs
dGVybmF0aXZlbHkgaWYgd2Ugc2VlIGEgdXNlIGZvciBpdCB0aGUKPiBjYWxsZXJzIHNob3VsZCBh
bHdheXMgaGF2ZSBhIGxpZmUgcGFnZSByZWZlcmVuY2UgYW55d2F5IChvciBtaWdodAo+IGJlIG9u
IGttYWxsb2MgbWVtb3J5KSwgc28gd2UgcmVhbGx5IHNob3VsZCBub3QgdGFrZSBhIHJlZmVyZW5j
ZSBlaXRoZXIuCj4gCj4gSW4gb3RoZXIgd29yZHM6ICB0aGUgb25seSB0aW1lIHdlIHNob3VsZCBl
dmVyIGhhdmUgdG8gcHV0IGEgcGFnZSBpbgo+IHRoaXMgcGF0Y2ggaXMgd2hlbiB0aGV5IGFyZSB1
c2VyIHBhZ2VzLiAgV2UnbGwgbmVlZCB0byBjbGVhbiB1cAo+IHZhcmlvdXMgYml0cyBvZiBjb2Rl
IGZvciB0aGF0LCBidXQgdGhhdCBjYW4gYmUgZG9uZSBncmFkdWFsbHkgYmVmb3JlCj4gZXZlbiBn
ZXR0aW5nIHRvIHRoZSBhY3R1YWwgcHV0X3VzZXJfcGFnZXMgY29udmVyc2lvbi4KPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
