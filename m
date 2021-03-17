Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E048633E707
	for <lists+v9fs-developer@lfdr.de>; Wed, 17 Mar 2021 03:35:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lMM1u-0002rv-Df; Wed, 17 Mar 2021 02:35:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <josef@toxicpanda.com>) id 1lMM1t-0002rl-NX
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 02:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KA0cQX0H+fedUmZSqotKHkFt9nfBS2lV4mSDduYC1Vo=; b=V9QAwlDtPf7CsUBHbtRtzBT+fY
 wkWAlFk1NPjFCPsWQssi6RYYc3mKKpvgZ+OrumhYgVuo9d+ST2mJf2pziPlEHm6UHaLkB/K4BcLX0
 k0WkJoP2Svvu+vV5fvxQKNCnF3aAcXUlGRThnLCfTalhvAQ1Vq3kSELkXL6hWVApZZ4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KA0cQX0H+fedUmZSqotKHkFt9nfBS2lV4mSDduYC1Vo=; b=jzP4iJ1pSxKzMo2YhJAICpYHmk
 qTnXzgqMTTcOflw94JJrsv5Wc/SVZbqaotvwjL6Il+xf+P2T27tJmJQ1rIrtV0MJ6ozjo5JMH865f
 mD0jchgYmsQwJ10NPMGARpc6UZ59rG3zK8DeGbMNAEIpgugVvFGH5XrVUBUWR0M5o2ec=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lMM1l-008lRj-H3
 for v9fs-developer@lists.sourceforge.net; Wed, 17 Mar 2021 02:35:25 +0000
Received: by mail-qv1-f42.google.com with SMTP id l15so732910qvl.4
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Mar 2021 19:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toxicpanda-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KA0cQX0H+fedUmZSqotKHkFt9nfBS2lV4mSDduYC1Vo=;
 b=CfwgdSSKwnQ510ZsN0+CUYSCMnJvGTNOF0qgo3PkrJT/Da/ZELVOKWL/gvdjXbwGIJ
 +O24SS0hCf6GGdRpdBSk7N5NbLn2iWfl25SUnaP3oNJ7WiJXrG4UqOuQVtPZMqv1UvLq
 1k9Y29haYQb7OJLIFpq9Ca/2lmePu+tE/YxOqCC7/pjN0ZJm/td3809+dpAOb2cIbaOB
 JIelDCwL+8ebDLqZ3W53s0y9QKt1RRSRn3jACZJpraJ6VtSZoPGPLIHKRuVw6WXLF8mu
 NSaPFQU3F6l0ReQyu9G5Yv+r+f2QbaVUKOhZkjsn1XroEHm2K1q3C9v7SyUY5WN5Z7ln
 hDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KA0cQX0H+fedUmZSqotKHkFt9nfBS2lV4mSDduYC1Vo=;
 b=UvTxQuYfcWDP+VsCgeplv+NvCrNi1Ar8KsuPM0N5rbs0Rb5N1OmoB4aIT9uNFvYZmz
 zNUzfxvZQNORL9DvGLUzOFgRf9dLqa2x7UghyS+TAmw42TM5IUcLWFgGnjh4820l7MlF
 RJNeTMAZgoXLLn33zL+7a5/v3m7EagstCPgL+p/+mwct0I5yyAPI8whKk86Z1Ar3z8g3
 2F8leTfFhKbPeENvIgfwi8jAOuN6HhL4liOEI0RUJpIb/sTlI9WXltkLCbfc3WAxB6Be
 CjX3FebgnDuK0PK4k7Hasf6DgN6IrfKWcftJe1AtjRa+u99T0Lbmno2fmgHezaxj9kLB
 tWRg==
X-Gm-Message-State: AOAM5311G9a3ei/BQYlXEVV0zh1xXMIInEp399aB/Lotl2mlGE8ls0T0
 dqSqvmSeT2ye43SrRxBXoOqTLM5hmgN8lCp31Tk=
X-Google-Smtp-Source: ABdhPJyCVi9KcQuRC+jk9afKmHcOxIGMxGHzjm2jLRzMICkswTbEAhqzEZ42z+xpCoNkmkSraZlwfQ==
X-Received: by 2002:a05:6214:1744:: with SMTP id
 dc4mr2746704qvb.40.1615947143864; 
 Tue, 16 Mar 2021 19:12:23 -0700 (PDT)
Received: from [192.168.1.45] (cpe-174-109-172-136.nc.res.rr.com.
 [174.109.172.136])
 by smtp.gmail.com with ESMTPSA id r3sm16393336qkm.129.2021.03.16.19.12.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Mar 2021 19:12:23 -0700 (PDT)
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Matthew Wilcox <willy@infradead.org>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>
References: <161539526152.286939.8589700175877370401.stgit@warthog.procyon.org.uk>
 <161539528910.286939.1252328699383291173.stgit@warthog.procyon.org.uk>
 <20210316190707.GD3420@casper.infradead.org>
 <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
From: Josef Bacik <josef@toxicpanda.com>
Message-ID: <887b9eb7-2764-3659-d0bf-6a034a031618@toxicpanda.com>
Date: Tue, 16 Mar 2021 22:12:21 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAHk-=wjSGsRj7xwhSMQ6dAQiz53xA39pOG+XA_WeTgwBBu4uqg@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.42 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lMM1l-008lRj-H3
Subject: Re: [V9fs-developer] [PATCH v4 02/28] mm: Add an unlock function
 for PG_private_2/PG_fscache
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 "open list:NFS, SUNRPC, AND..." <linux-nfs@vger.kernel.org>,
 linux-afs@lists.infradead.org, Jeff Layton <jlayton@redhat.com>,
 CIFS <linux-cifs@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 David Howells <dhowells@redhat.com>, Linux-MM <linux-mm@kvack.org>,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 3/16/21 8:43 PM, Linus Torvalds wrote:
> [ Adding btrfs people explicitly, maybe they see this on the fs-devel
> list, but maybe they don't react .. ]
> 
> On Tue, Mar 16, 2021 at 12:07 PM Matthew Wilcox <willy@infradead.org> wrote:
>>
>> This isn't a problem with this patch per se, but I'm concerned about
>> private2 and expected page refcounts.
> 
> Ugh. You are very right.
> 
> It would be good to just change the rules - I get the feeling nobody
> actually depended on them anyway because they were _so_ esoteric.
> 
>> static inline int is_page_cache_freeable(struct page *page)
>> {
>>          /*
>>           * A freeable page cache page is referenced only by the caller
>>           * that isolated the page, the page cache and optional buffer
>>           * heads at page->private.
>>           */
>>          int page_cache_pins = thp_nr_pages(page);
>>          return page_count(page) - page_has_private(page) == 1 + page_cache_pins;
> 
> You're right, that "page_has_private()" is really really nasty.
> 
> The comment is, I think, the traditional usage case, which used to be
> about page->buffers. Obviously these days it is now about
> page->private with PG_private set, pointing to buffers
> (attach_page_private() and detach_page_private()).
> 
> But as you point out:
> 
>> #define PAGE_FLAGS_PRIVATE                              \
>>          (1UL << PG_private | 1UL << PG_private_2)
>>
>> So ... a page with both flags cleared should have a refcount of N.
>> A page with one or both flags set should have a refcount of N+1.
> 
> Could we just remove the PG_private_2 thing in this context entirely,
> and make the rule be that
> 
>   (a) PG_private means that you have some local private data in
> page->private, and that's all that matters for the "freeable" thing.
> 
>   (b) PG_private_2 does *not* have the same meaning, and has no bearing
> on freeability (and only the refcount matters)
> 
> I _)think_ the btrfs behavior is to only use PagePrivate2() when it
> has a reference to the page, so btrfs doesn't care?
> 
> I think fscache is already happy to take the page count when using
> PG_private_2 for locking, exactly because I didn't want to have any
> confusion about lifetimes. But this "page_has_private()" math ends up
> meaning it's confusing anyway.
> 
> btrfs people? What are the semantics for PG_private_2? Is it just a
> flag, and you really don't want it to have anything to do with any
> page lifetime decisions? Or?
> 

Yeah it's just a flag, we use it to tell that the page is part of a range that 
has been allocated for IO.  The lifetime of the page is independent of the page, 
but is generally either dirty or under writeback, so either it goes through 
truncate and we clear PagePrivate2 there, or it actually goes through IO and is 
cleared before we drop the page in our endio.  We _always_ have PG_private set 
on the page as long as we own it, and PG_private_2 is only set in this IO 
related context, so we're safe there because of the rules around 
PG_dirty/PG_writeback.  We don't need it to have an extra ref for it being set. 
  Thanks,

Josef



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
