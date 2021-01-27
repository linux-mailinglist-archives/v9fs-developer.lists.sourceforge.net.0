Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0A530672B
	for <lists+v9fs-developer@lfdr.de>; Wed, 27 Jan 2021 23:21:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l4tCA-0005au-Q0; Wed, 27 Jan 2021 22:21:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1l4tC9-0005am-JY
 for v9fs-developer@lists.sourceforge.net; Wed, 27 Jan 2021 22:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZJB6pzhcxR6RIOhk+W4vBLAOQOY6A+IbRkTJX3GrSIA=; b=CGgeKkIlC54RLkZNpRpWRyGrji
 f33ennnXui0SMEpi1Vf88/x2u+kpUxTwe7Es1Nj6UAdygAm1hb5VDXTGbtMDIpH+V5lF14PB++THA
 /wwf+SCvkI4EQ/iUtTX9U3x59qd0M8QQ9kVRl2Yv3fODGvzzAG+OjxdNHaVwnx1ig75I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZJB6pzhcxR6RIOhk+W4vBLAOQOY6A+IbRkTJX3GrSIA=; b=Hyk1oq0b0ucMVx1iFRvW9HwFHU
 UZ1lM2Sbi/qpqNU2OHUitvWVmxmjFUiKP3F/UtmWw+Si4VvIf8P8bsp9dMzqGJzb640phovBHoyz2
 EB7+eFbREoPiLsOYrWeibNGkQKioUVSvgEo9PhWoJMIf7anPzze5YHbw79z8Kq/I8uE8=;
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1l4tC3-00F8SP-2k
 for v9fs-developer@lists.sourceforge.net; Wed, 27 Jan 2021 22:21:49 +0000
Received: by mail-ed1-f42.google.com with SMTP id n6so4347829edt.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Jan 2021 14:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZJB6pzhcxR6RIOhk+W4vBLAOQOY6A+IbRkTJX3GrSIA=;
 b=Nex7m0nPT6ikFYD0UDxgXryCJyYTx+pRUl8n/I+/+QgVAzM5sX/Iufo8IZe70BES4A
 PxumGwRUK+eKwrok3peAydYv34EWMMQMd6k8vlFvyDIPohc+dGl9OdT0wXxeuKjCUlu3
 DoAjRpEayelexJA+o2u5g1eysr8elGHigTn34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZJB6pzhcxR6RIOhk+W4vBLAOQOY6A+IbRkTJX3GrSIA=;
 b=kY7Ty2T2hAObq4sIk3+IvHawhBEQgfEt14miVSTAElKsH6LLRrSp0opV+rjb8Lz29i
 au6Y4sBfeoZxshVzIekrv6KPAVT11Jxyb14TgqGbAXvWH8TuPmAh6wVywdqvrzSqcgSH
 +vNTEGiZVbxmdrtkxlRz7HZwy3LzdY5CYJQUJiDla9rnWyo5rfEB1haOuF57WV0JHya0
 fGzS9dJ4v9Dz23AQYNHZEcDIUnd+3/BXK4SC4RSN4gqFMRu7hRaXfxgpB3qCbvayUAxu
 gW1Z6N6KIJW7KTEfrEdKhAC031GVfF2/wwCdgntdImeUjEaYFtkgZTBB7Cht5Bds/ZZX
 qLXg==
X-Gm-Message-State: AOAM533z3PISwVTsKxazWKutO0LmFVsRjTCrzDkpKuyKIlqjc0IsCMn6
 p6ZicI5gzdpoIW051mykT+kWnL+7R4AMpw==
X-Google-Smtp-Source: ABdhPJx0sXmue+b31NUSFIS5tDToElotQNayR4UWiKmAJuh9khGqTg5VDA+O7bcVIHBlFD/7kIqetQ==
X-Received: by 2002:a19:e95:: with SMTP id 143mr5976395lfo.420.1611775900095; 
 Wed, 27 Jan 2021 11:31:40 -0800 (PST)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com.
 [209.85.167.49])
 by smtp.gmail.com with ESMTPSA id p16sm728584lfc.97.2021.01.27.11.31.38
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Jan 2021 11:31:38 -0800 (PST)
Received: by mail-lf1-f49.google.com with SMTP id q8so4272889lfm.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Jan 2021 11:31:38 -0800 (PST)
X-Received: by 2002:ac2:420a:: with SMTP id y10mr5554909lfh.377.1611775897778; 
 Wed, 27 Jan 2021 11:31:37 -0800 (PST)
MIME-Version: 1.0
References: <000000000000672eda05b9e291ff@google.com>
In-Reply-To: <000000000000672eda05b9e291ff@google.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 27 Jan 2021 11:31:21 -0800
X-Gmail-Original-Message-ID: <CAHk-=whCX0Ab=Z2N-zuKVv7BdBZAUGgP0jQqCg+OJjHmtaOkTA@mail.gmail.com>
Message-ID: <CAHk-=whCX0Ab=Z2N-zuKVv7BdBZAUGgP0jQqCg+OJjHmtaOkTA@mail.gmail.com>
To: syzbot <syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com>, 
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
 Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l4tC3-00F8SP-2k
Subject: Re: [V9fs-developer] KASAN: invalid-free in p9_client_create (2)
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
Cc: lucho@ionkov.net, wanghai38@huawei.com, ericvh@gmail.com,
 Netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

[ Participants list changed - syzbot thought this was networking and
p9, but it really looks entirely like a slub internal bug. I left the
innocent people on the list just to let them know they are innocent ]

On Wed, Jan 27, 2021 at 6:27 AM syzbot
<syzbot+d0bd96b4696c1ef67991@syzkaller.appspotmail.com> wrote:
>
> The issue was bisected to:
>
> commit dde3c6b72a16c2db826f54b2d49bdea26c3534a2
> Author: Wang Hai <wanghai38@huawei.com>
> Date:   Wed Jun 3 22:56:21 2020 +0000
>
>     mm/slub: fix a memory leak in sysfs_slab_add()
>
> BUG: KASAN: double-free or invalid-free in slab_free mm/slub.c:3142 [inline]
> BUG: KASAN: double-free or invalid-free in kmem_cache_free+0x82/0x350 mm/slub.c:3158

The p9 part of this bug report seems to be a red herring.

The problem looks like it's simply the kmem_cache failure case, ie:

 - mm/slab_common.c: create_cache(): if the __kmem_cache_create()
fails, it does:

        out_free_cache:
                kmem_cache_free(kmem_cache, s);

 - but __kmem_cache_create() - at least for slub() - will have done

        sysfs_slab_add(s) .. fails ..
            -> kobject_del(&s->kobj); .. which frees s ...

so the networking and p9 are fine, and the only reason p9 shows up in
the trace is that apparently it causes that failure in
kobject_init_and_add() for whatever reason, and that then exposes the
problem.

So the added kobject_put() really looks buggy in this situation, and
the memory leak that that commit dde3c6b72a16 ("mm/slub: fix a memory
leak in sysfs_slab_add()") fixes is now a double free.

And no, I don't think you can just remove the kmem_cache_free() in
create_cache(), because _other_ error cases of __kmem_cache_create()
do not free this.

Wang Hai - comments? I'm inclined to revert that commit for now unless
somebody can come up with a proper fix..

              Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
