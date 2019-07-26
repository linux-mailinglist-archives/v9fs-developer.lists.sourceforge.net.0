Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CAB475C82
	for <lists+v9fs-developer@lfdr.de>; Fri, 26 Jul 2019 03:24:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqoyD-0007M2-Rd; Fri, 26 Jul 2019 01:24:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jhubbard@nvidia.com>) id 1hqoyC-0007Lu-8x
 for v9fs-developer@lists.sourceforge.net; Fri, 26 Jul 2019 01:24:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QKXKINFukbwLIIsnFYM0gxF2tKYcHndEGgwougXKa7I=; b=Iz73STKoYJPFRkdhc5TaFO0QFI
 Tx1BJv5OJ4WuR1iKcO2TyPeDNer1RFx6FLHYZ9yNTmXuVKgfvecRLqF44FdjhrxrtQY0F9vapLLOA
 rGRpevxOpKs9IgEwGSQ5+ctaR/7H76JUJwyxObj/t+0C7Uo8NC6zr7gLWinc3N2Lzdww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QKXKINFukbwLIIsnFYM0gxF2tKYcHndEGgwougXKa7I=; b=WziBOsvNJDa5rJszJqKEU7sdqZ
 ljauXwilkP6q3z0bOmPEfKMGqqyprd5exgsgl/7E5GCKalG8j0oJP9wcyKBUt9o35exb7Xoq+g6pl
 P1tIFYGYIKHv4iG37nAhR1OgEFriSmvdnK0tcdXJbO81XU0ouY0Ip1EroBR8KAapW2Io=;
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqoyA-00GOtb-5i
 for v9fs-developer@lists.sourceforge.net; Fri, 26 Jul 2019 01:24:28 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d3a563e0000>; Thu, 25 Jul 2019 18:24:14 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 25 Jul 2019 18:24:17 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 25 Jul 2019 18:24:17 -0700
Received: from [10.110.48.28] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 26 Jul
 2019 01:24:16 +0000
To: Bob Liu <bob.liu@oracle.com>, Andrew Morton <akpm@linux-foundation.org>
References: <20190724042518.14363-1-jhubbard@nvidia.com>
 <8621066c-e242-c449-eb04-4f2ce6867140@oracle.com>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <88864b91-516d-9774-f4ca-b45927ac4556@nvidia.com>
Date: Thu, 25 Jul 2019 18:24:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8621066c-e242-c449-eb04-4f2ce6867140@oracle.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564104254; bh=QKXKINFukbwLIIsnFYM0gxF2tKYcHndEGgwougXKa7I=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=PQnzJX5xz5ikEiwrLKM8WsALivZ88h6rrpD5As08defMJIkdP+u4c4qNjj9VJ4tt7
 nwv4lirmE3zmhFpqjjtQZ51fomZqIx7+Z5K/hIMgtkne3B/lAraavguLY6SA4HXRUi
 W4SUZZlps8N4rFxPowCNQkldeoVK/fBECjRShYxjtzJx8yvDnyDgvLG3XjCMQgN0HE
 j0RlPZtSamPdX7GpRyHeIVO0klar+OAGzPGoJx+oiz7wZ/GbisDHnJkR/hoyBrvfQa
 +HuyKaWvKrWvHxopvgEQcRa8uv0hWn0N0u4M8vDDfrnuUHyPlJZxMytFt1GB3uPYBU
 1cdZ+M2GXGeqw==
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hqoyA-00GOtb-5i
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
 LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 7/24/19 5:41 PM, Bob Liu wrote:
> On 7/24/19 12:25 PM, john.hubbard@gmail.com wrote:
>> From: John Hubbard <jhubbard@nvidia.com>
>>
>> Hi,
>>
>> This is mostly Jerome's work, converting the block/bio and related areas
>> to call put_user_page*() instead of put_page(). Because I've changed
>> Jerome's patches, in some cases significantly, I'd like to get his
>> feedback before we actually leave him listed as the author (he might
>> want to disown some or all of these).
>>
> 
> Could you add some background to the commit log for people don't have the context..
> Why this converting? What's the main differences?
> 

Hi Bob,

1. Many of the patches have a blurb like this:

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

...and if you look at that commit, you'll find several pages of
information in its commit description, which should address your point.

2. This whole series has to be re-worked, as per the other feedback thread.
So I'll keep your comment in mind when I post a new series.

thanks,
-- 
John Hubbard
NVIDIA


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
