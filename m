Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E971C726B9
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jul 2019 06:35:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hq8zb-0001mJ-8n; Wed, 24 Jul 2019 04:35:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>) id 1hq8za-0001m8-HS
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ycCVDmY+zemv5AT9YYK21afucrRr/p3DH8wHXRCnZg=; b=EIi3wv9fKyaea/5Pb9xL9Th19c
 kiwo8ukmcxNducYdkozVQ0VFFEdeDinx7WrzHCW2ZvIwagx8AN1KPW/c9VqYNSRlagescmTi/IRpA
 msKXeLSe3xZNTNv1X57m7fFKrri7eGKupo4flr+7gJsmUe9btZKmao7Cw+9EKwlp8h0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ycCVDmY+zemv5AT9YYK21afucrRr/p3DH8wHXRCnZg=; b=mXG20Ir+fVSFpPZu8jQ33xWx+w
 T2oyLEatROiuzwixCpZm49qSBRnwk27issKwGzWG4TszQWgEuL/IH+LdoYd67v4siKdZ2JuFhQNzY
 uBu4Xq2jph07R16pbgr/VGwUp3VHFWt8D4/I7czeVamxo1+sz/IfXkguMLhhvCJfqsYA=;
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hq8zZ-00DbLR-Ar
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jul 2019 04:35:06 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d37dfee0000>; Tue, 23 Jul 2019 21:34:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 23 Jul 2019 21:34:57 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 23 Jul 2019 21:34:57 -0700
Received: from [10.110.48.28] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 24 Jul
 2019 04:34:56 +0000
To: <john.hubbard@gmail.com>, Andrew Morton <akpm@linux-foundation.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <20190724042518.14363-8-jhubbard@nvidia.com>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <de40950e-0801-b830-4c48-56e84de0c82b@nvidia.com>
Date: Tue, 23 Jul 2019 21:34:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724042518.14363-8-jhubbard@nvidia.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563942895; bh=5ycCVDmY+zemv5AT9YYK21afucrRr/p3DH8wHXRCnZg=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Li1yuMA+fDKyuz/M4SCCN59d7ctSse1jfSTWQ3iZlTsXSlRURMkhcccjz+NjkScvQ
 OT79Q+110UzH6ATtOAZE9TFWQjw4BLnCG5aUr/CalDFE2cW6KgzaPkPaa2VXwXXnY7
 5/pADAmNdIG6y4v4o+nIoM+vpWxQn4IxAHbuuW5oIOtDNzIl/y2OpjmtWUHEk+W1aZ
 olqi7E7lxyXO7wuTmjE0Zl5xPzM6XAPVnnMYc1B16d5wLkxA+Bss3XKDZ67aQwvlKh
 DZPWPt41q1dZKdSXT2fR0lvzoisF0pX9tRbjvzPB2h5VmCo5KF3WlKIvbrQsfpbBjq
 ftxyscOjUOrMA==
X-Spam-Score: -0.4 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hq8zZ-00DbLR-Ar
Subject: Re: [V9fs-developer] [PATCH 07/12] vhost-scsi: convert put_page()
 to put_user_page*()
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Boaz Harrosh <boaz@plexistor.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 "Michael S . Tsirkin" <mst@redhat.com>, Dave Chinner <david@fromorbit.com>,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, linux-cifs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-rdma@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Johannes Thumshirn <jthumshirn@suse.de>, v9fs-developer@lists.sourceforge.net,
 Jason Wang <jasowang@redhat.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Stefan Hajnoczi <stefanha@redhat.com>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, samba-technical@lists.samba.org,
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gNy8yMy8xOSA5OjI1IFBNLCBqb2huLmh1YmJhcmRAZ21haWwuY29tIHdyb3RlOgo+IEZyb206
IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgo+IAo+IEZvciBwYWdlcyB0aGF0
IHdlcmUgcmV0YWluZWQgdmlhIGdldF91c2VyX3BhZ2VzKigpLCByZWxlYXNlIHRob3NlIHBhZ2Vz
Cj4gdmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEg
cHV0X3BhZ2UoKS4KPiAKPiBUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29udmVyc2lvbiwgYXMg
ZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKPiAoIm1tOiBpbnRyb2R1Y2UgcHV0X3Vz
ZXJfcGFnZSooKSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KPiAKPiBDaGFuZ2VzIGZyb20gSsOp
csO0bWUncyBvcmlnaW5hbCBwYXRjaDoKPiAKPiAqIENoYW5nZWQgYSBXQVJOX09OIHRvIGEgQlVH
X09OLgo+IAoKQ2xlYXJseSwgdGhlIGFib3ZlIGNvbW1pdCBsb2cgaGFzIGl0IGJhY2t3YXJkcyAo
dGhpcyBpcyBxdWl0ZSBteSBuaWdodApmb3IgdHlwb3MpLiAgUGxlYXNlIHJlYWQgdGhhdCBhcyAi
Y2hhbmdlZCBhIEJVR19PTiB0byBhIFdBUk5fT04iLgoKSSdsbCBjb3JyZWN0IHRoZSBjb21taXQg
ZGVzY3JpcHRpb24gaW4gbmV4dCBpdGVyYXRpb24gb2YgdGhpcyBwYXRjaHNldC4KCi4uLgoKPiAr
CS8qCj4gKwkgKiBIZXJlIGluIGFsbCBjYXNlcyB3ZSBzaG91bGQgaGF2ZSBhbiBJT1ZFQyB3aGlj
aCB1c2UgR1VQLiBJZiB0aGF0IGlzCj4gKwkgKiBub3QgdGhlIGNhc2UgdGhlbiB3ZSB3aWxsIHdy
b25nbHkgY2FsbCBwdXRfdXNlcl9wYWdlKCkgYW5kIHRoZSBwYWdlCj4gKwkgKiByZWZjb3VudCB3
aWxsIGdvIHdyb25nICh0aGlzIGlzIGluIHZob3N0X3Njc2lfcmVsZWFzZV9jbWQoKSkKPiArCSAq
Lwo+ICsJV0FSTl9PTighaW92X2l0ZXJfZ2V0X3BhZ2VzX3VzZV9ndXAoaXRlcikpOwo+ICsKLi4u
Cgp0aGFua3MsCi0tIApKb2huIEh1YmJhcmQKTlZJRElBCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
