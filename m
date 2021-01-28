Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B11C230757B
	for <lists+v9fs-developer@lfdr.de>; Thu, 28 Jan 2021 13:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l563S-0003ic-3o; Thu, 28 Jan 2021 12:05:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vbabka@suse.cz>) id 1l5625-0003fG-0R
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Jan 2021 12:04:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ShdE5l6vYKu9U9i/k7pizD0v9v42HAUGFi2ucYvPhEw=; b=NdOCrhY58LO4HKYVvh+C7LknL0
 VdosuvQoR81FlQ9fYHosVzHPJOTDlYti3KdMW0RMAb+WDy3rb8OHI+d5n/XH3Z4yPBmo/Y0ziCpky
 Uc7Dyid7YeLl9u0ttzFyQwb1R2PYNpJdM4T7Z5BVUuhP7eTK5IdEhyn8ouokLuU2y4nU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ShdE5l6vYKu9U9i/k7pizD0v9v42HAUGFi2ucYvPhEw=; b=R1Qm2uJ34+oFAZgoLdru/nr3hn
 HJMrW9JqN5Io75DggXlO6fYkheH9V7HujcrEMnqBKuOr3W+9gn7KQnWSgxrUeWeEh2Q/+3V0NrVSU
 q+joYMbqHveCajHAw2z7Btw8wqSeKLG3R6QrLcs7fVQq6MCPV4BrSMSxiBWNPr5ogfXE=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l561o-00HWk0-QM
 for v9fs-developer@lists.sourceforge.net; Thu, 28 Jan 2021 12:04:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 6DA1AAC45;
 Thu, 28 Jan 2021 12:03:54 +0000 (UTC)
To: Wang Hai <wanghai38@huawei.com>, torvalds@linux-foundation.org,
 cl@linux.com, penberg@kernel.org, rientjes@google.com,
 iamjoonsoo.kim@lge.com, akpm@linux-foundation.org
References: <20210128113250.60078-1-wanghai38@huawei.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <1f4afc98-f5de-3992-1f49-f041d3783ea2@suse.cz>
Date: Thu, 28 Jan 2021 13:03:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210128113250.60078-1-wanghai38@huawei.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l561o-00HWk0-QM
Subject: Re: [V9fs-developer] [PATCH] Revert "mm/slub: fix a memory leak in
 sysfs_slab_add()"
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 1/28/21 12:32 PM, Wang Hai wrote:
> This reverts commit dde3c6b72a16c2db826f54b2d49bdea26c3534a2.
> 
> syzbot report a double-free bug. The following case can cause this bug.
>  - mm/slab_common.c: create_cache(): if the __kmem_cache_create()
> fails, it does:
> 
> 	out_free_cache:
> 		kmem_cache_free(kmem_cache, s);
> 
>  - but __kmem_cache_create() - at least for slub() - will have done
> 
> 	sysfs_slab_add(s)
> 		-> sysfs_create_group() .. fails ..
> 		-> kobject_del(&s->kobj); .. which frees s ...
> 
> We can't remove the kmem_cache_free() in create_cache(), because
> other error cases of __kmem_cache_create() do not free this.
> 
> So, revert the commit dde3c6b72a16 ("mm/slub: fix a memory leak in
> sysfs_slab_add()") to fix this.
> 
> Reported-by: syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com
> Fixes: dde3c6b72a16 ("mm/slub: fix a memory leak in sysfs_slab_add()")
> Signed-off-by: Wang Hai <wanghai38@huawei.com>

Cc: <stable@vger.kernel.org>
Acked-by: Vlastimil Babka <vbabka@suse.cz>

Double-free is worse than a rare small memory leak. Which would still be nice to
fix, but I'm afraid it will be more complicated, so start with preventing the
worse issue, including stable.

> ---
>  mm/slub.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/mm/slub.c b/mm/slub.c
> index 69742ab9a21d..7ecbbbe5bc0c 100644
> --- a/mm/slub.c
> +++ b/mm/slub.c
> @@ -5625,10 +5625,8 @@ static int sysfs_slab_add(struct kmem_cache *s)
>  
>  	s->kobj.kset = kset;
>  	err = kobject_init_and_add(&s->kobj, &slab_ktype, NULL, "%s", name);
> -	if (err) {
> -		kobject_put(&s->kobj);
> +	if (err)
>  		goto out;
> -	}
>  
>  	err = sysfs_create_group(&s->kobj, &slab_attr_group);
>  	if (err)
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
