Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 317DF641D82
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Dec 2022 15:39:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p1q91-00076Z-0O;
	Sun, 04 Dec 2022 14:39:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p1q8z-00076T-GH
 for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Dec 2022 14:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=61e5Of6HplrZC23fyHjHCQZlLVAB85wBc+j9pwB502M=; b=ecUFQVYm0s1fjYDqzWRLKgfuC5
 oG5AZI9NfeadLXGdlpHapu1R40Zseeqjh9xaaJnAA2WXWyikjRteb3HikMdRMBC6t/S8dh5KMOECf
 552sobYLwViZV/Xh0KoZOjv8ykTyLWkry1bvykqqQJ+ni95m/YhkNOZBZjdrMRQeYcTA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=61e5Of6HplrZC23fyHjHCQZlLVAB85wBc+j9pwB502M=; b=ifVPpGjHX+ypyWeCyj3+xlyRho
 lgzevV172JaihwTzKrZBD2bXYP2SdwRpcCcy5yiF26j/yTXlKMdbUBWr4JxDpR2pavXoK1CAFr3ZZ
 jpMewGgORikha1IRZZGqfrD4VvPdGreskPBn3+uEAj1McxIrSa7PYx5RQLfGOM07f8UM=;
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p1q8y-0003xc-RG for v9fs-developer@lists.sourceforge.net;
 Sun, 04 Dec 2022 14:39:01 +0000
Received: by mail-pg1-f177.google.com with SMTP id h33so8322339pgm.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 04 Dec 2022 06:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=61e5Of6HplrZC23fyHjHCQZlLVAB85wBc+j9pwB502M=;
 b=lxuSTXquHU/xTvRwvkdhDESHLUtf/bfs1iV3b5EpmPPzzALKb1oc1X/8XFf1rVbcrm
 5F/s+ixiv6an+GUk7H9ktzQz+2jkiieJmOx7/hj224/J2aJu2oCQVWSaDb4WLQhlgmCm
 dT1yvz5o9RGgEiJcxhenjdQpuVIu6ojhmaHu3cO8LZjcgYibFqXOiurzsqEW6L9Yf6w4
 XnVWL26cKhu0Fuco/TSC4XJOPhn5Hxor6fC07SIePXse1t5Qx+K7c8kKr3tAljwU1hpE
 LYPAubWCEvCbTQ3CRK4i9xU47IUR8OTHOkiEQbn9tc6c2/9NrRHB7gT9BK6FMvMgmbYq
 d82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=61e5Of6HplrZC23fyHjHCQZlLVAB85wBc+j9pwB502M=;
 b=TxJsmMWguSpUDsvtMCzf6/ESFbHei7Wtf6sJImIg5pKfkhj3lJHrk1XzUYEd/qoSYO
 Pg0QYEqR0mtFPTBpprd89spMzqAHp3Fq/v43AcuZOETG/NkByyKy4Ty9nXR9YyBH0Ume
 LdDI7u5y8+Nw2SUUuyfmjMVdxRZIOhWjqHOdEMz+/3cwc/n9+tkRa82ItOqMzeG0POd0
 5RFzA/XoyAcJbN2IsMcO9GlDezofcALOTwbhsrPSX4e+SoBEovEPI6Ox3zVVt7rH1A0W
 WpdhXIraPrndJGlypb/au//orWb0xqMCOP/zYrzLqu+MZca/EaOQaZogI9a6tkR6sq5n
 /F5g==
X-Gm-Message-State: ANoB5plhneodRiYelUsUeC+S1ZBHzC7CW+zYx80Lgd1hbuA7XzoDP5b/
 sSt5khvAWPB8K1jMPeu9/qI8FgsQRNDOcQ==
X-Google-Smtp-Source: AA0mqf60gFImrC47mMKRxryqhaP/EYvz2fKAjGesm2fe98CPJTY26516zkLJNHx85RC2KrGVefdp/Q==
X-Received: by 2002:a05:6a00:3398:b0:575:72f3:d4dc with SMTP id
 cm24-20020a056a00339800b0057572f3d4dcmr26986997pfb.6.1670164735130; 
 Sun, 04 Dec 2022 06:38:55 -0800 (PST)
Received: from ArchLinux (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 l5-20020a170903244500b00176b3c9693esm8870730pls.299.2022.12.04.06.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Dec 2022 06:38:53 -0800 (PST)
References: <4759293.MmlG3nAkEO@silver>
 <20221201033310.18589-1-schspa@gmail.com> <Y4oSQU4taHVQ0n2j@codewreck.org>
User-agent: mu4e 1.7.5; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Sun, 04 Dec 2022 22:35:41 +0800
In-reply-to: <Y4oSQU4taHVQ0n2j@codewreck.org>
Message-ID: <m2tu2b5j4g.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Schspa Shi wrote on Thu, Dec 01, 2022 at 11:33:10AM +0800:
 >> When the new request allocated, the refcount will be zero if it is resued
 >> one. But if the request is newly allocated from slab, it is [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p1q8y-0003xc-RG
Subject: Re: [V9fs-developer] [PATCH v3] 9p/fd: set req refcount to zero to
 avoid uninitialized usage
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
Cc: lucho@ionkov.net, syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


asmadeus@codewreck.org writes:

> Schspa Shi wrote on Thu, Dec 01, 2022 at 11:33:10AM +0800:
>> When the new request allocated, the refcount will be zero if it is resued
>> one. But if the request is newly allocated from slab, it is not fully
>> initialized before add it to idr.
>> 
>> If the p9_read_work got a response before the refcount initiated. It will
>> use a uninitialized req, which will result in a bad request data struct.
>> 
>> Here is the logs from syzbot.
>> 
>> Corrupted memory at 0xffff88807eade00b [ 0xff 0x07 0x00 0x00 0x00 0x00
>> 0x00 0x00 . . . . . . . . ] (in kfence-#110):
>>  p9_fcall_fini net/9p/client.c:248 [inline]
>>  p9_req_put net/9p/client.c:396 [inline]
>>  p9_req_put+0x208/0x250 net/9p/client.c:390
>>  p9_client_walk+0x247/0x540 net/9p/client.c:1165
>>  clone_fid fs/9p/fid.h:21 [inline]
>>  v9fs_fid_xattr_set+0xe4/0x2b0 fs/9p/xattr.c:118
>>  v9fs_xattr_set fs/9p/xattr.c:100 [inline]
>>  v9fs_xattr_handler_set+0x6f/0x120 fs/9p/xattr.c:159
>>  __vfs_setxattr+0x119/0x180 fs/xattr.c:182
>>  __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:216
>>  __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:277
>>  vfs_setxattr+0x143/0x340 fs/xattr.c:309
>>  setxattr+0x146/0x160 fs/xattr.c:617
>>  path_setxattr+0x197/0x1c0 fs/xattr.c:636
>>  __do_sys_setxattr fs/xattr.c:652 [inline]
>>  __se_sys_setxattr fs/xattr.c:648 [inline]
>>  __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:648
>>  do_syscall_32_irqs_on arch/x86/entry/common.c:112 [inline]
>>  __do_fast_syscall_32+0x65/0xf0 arch/x86/entry/common.c:178
>>  do_fast_syscall_32+0x33/0x70 arch/x86/entry/common.c:203
>>  entry_SYSENTER_compat_after_hwframe+0x70/0x82
>> 
>> Below is a similar scenario, the scenario in the syzbot log looks more
>> complicated than this one, but this patch can fix it.
>> 
>>      T21124                   p9_read_work
>> ======================== second trans =================================
>> p9_client_walk
>>   p9_client_rpc
>>     p9_client_prepare_req
>>       p9_tag_alloc
>>         req = kmem_cache_alloc(p9_req_cache, GFP_NOFS);
>>         tag = idr_alloc
>>         << preempted >>
>>         req->tc.tag = tag;
>>                             /* req->[refcount/tag] == uninitialized */
>>                             m->rreq = p9_tag_lookup(m->client, m->rc.tag);
>>                               /* increments uninitalized refcount */
>> 
>>         refcount_set(&req->refcount, 2);
>>                             /* cb drops one ref */
>>                             p9_client_cb(req)
>>                             /* reader thread drops its ref:
>>                                request is incorrectly freed */
>>                             p9_req_put(req)
>>     /* use after free and ref underflow */
>>     p9_req_put(req)
>> 
>> To fix it, we can initize the refcount to zero before add to idr.
>
> (fixed initialize typo here)
>
>> Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com
>> Signed-off-by: Schspa Shi <schspa@gmail.com>
>> 
>> --
>> 
>> Changelog:
>> v1 -> v2:
>>         - Set refcount to fix the problem.
>> v2 -> v3:
>>         - Comment messages improve as asmadeus suggested.
>
> Just a note: when applying a patch with git am, this goes into the
> commit message -- please include the changelog below the git's three
> dashes instead (anything between the three dashes and the 'diff --git'
> below:

Thanks for the reminder, I will pay attention to this next time.

>> ---
>>  net/9p/client.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>> 
>> diff --git a/net/9p/client.c b/net/9p/client.c
>
>
> Christian Schoenebeck wrote on Fri, Dec 02, 2022 at 12:48:39PM +0100:
>> > +	/* refcount needs to be set to 0 before inserting into the idr
>> > +	 * so p9_tag_lookup does not accept a request that is not fully
>> > +	 * initialized. refcount_set to 2 below will mark request live.
>> > +	 */
>> > +	refcount_set(&req->refcount, 0);
>> 
>> I would s/live/ready for being used/, but comment should be clear enough
>> anyway.
>
> I blame golfing to fit into three lines, sorry!
> Since it was my suggestion, I've taken the liberty to change 'live' to
> 'ready' as an half step; I think it's clearer than live and probably
> understandable enough.
>
> I've pushed this to my next branch and will submit to Linus for the
> merge window in a couple of weeks, no point in rushing this to stable
> unless it gets snatched through the net tree first...

Thanks.

-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
