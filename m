Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EB363E7A9
	for <lists+v9fs-developer@lfdr.de>; Thu,  1 Dec 2022 03:19:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0ZAu-0002M9-O8;
	Thu, 01 Dec 2022 02:19:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0ZAt-0002M2-A8
 for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 02:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KrLJtRqv6qfTxT8OQhavnIfXvCPDD2TtRpNvKMUltn8=; b=l347ElWgj4GrEDBeLC3rv5mfb/
 xNeZe8yvoouWo+qS9ein4IVuNZMKQX+KclCuSLknMwVd+6rz7mWs4elPaWljER5XDdsPgsr5ax9iw
 SE+QaFIq4079tMVZm8K9bkr3xONJH1OjH+51a+xJhJd0hNscrzejVmNh9XqYPeuLxz08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KrLJtRqv6qfTxT8OQhavnIfXvCPDD2TtRpNvKMUltn8=; b=EJlXwhLRPk0H7wUD/a46y5RwWc
 yzll4Aa11DtEOc4duoTbLft0Chi96790vi4ZxVsohWD9wFH9NrDXAfqJyf9iRloNu6+LGiRIZhvUr
 T0nZswsQwEVLsiFol91GsuEmCaxWke1lygfcVIONNIzHZEQbgirsyaweJpgW6ZfZy45g=;
Received: from mail-pj1-f42.google.com ([209.85.216.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0ZAp-001wTt-2D for v9fs-developer@lists.sourceforge.net;
 Thu, 01 Dec 2022 02:19:43 +0000
Received: by mail-pj1-f42.google.com with SMTP id
 b13-20020a17090a5a0d00b0021906102d05so557357pjd.5
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 30 Nov 2022 18:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=KrLJtRqv6qfTxT8OQhavnIfXvCPDD2TtRpNvKMUltn8=;
 b=KIHlOgIn25vxxoYO8p8aEiritxvvRnWz0ceh+/krFxcq4fZoZg9OTTZ7bpx443ntsE
 mK92t77BsuA107Nh37pxbMr4efk1i3x7uqGvNufRCTPbz9/tsrLXRshdygBhh0nbaJS/
 o6iMbNSwurNsAV31dHyYZVPdYgGJoN5Pn/HJKRuMq53wKTUun65zUgSrsNS5t8zLeIHF
 TIAl09fEDy32CU8ClpLWGtCpAvoITrbRRj3odzJcG8uDCRlnw7W/KHeSJ2bzJUXaoFZb
 RbrDuoWk9s3D/USulSHJwMLItaXfpgHAZUgjWWOR4DM1BP56+//ZRglGSLhQA7z3ez4Z
 XexA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KrLJtRqv6qfTxT8OQhavnIfXvCPDD2TtRpNvKMUltn8=;
 b=cR9FUJxpjZuDicfLQfIroE7ex0ZFesmbTMxnUawn3yavpGfyj0ehz8OgS3wIivT154
 XdAVA9u2FlGKt24MJy+XGQx2o1+v41ySk84pLZsgN6dPL9EG7loctDNQPuvwUsQ3Y1VF
 YhNJJu+JpIZcvbGLxnkflEhLaL2nZPaaaHztQZCIlUPC3pN+L3PiYJOJVUSp95UO/6uX
 mshNf0Ti+0Fm4OtZOI80tUBT70YDTM1w/MfhNpUDCQ25ygr1UH6JU69w2+iTbaMAcBWO
 qAdYF24gEAHBfN+dXNQSRW86c/ZCQswvK+3eEq7Vx6+4rIZzWn6dZ0auUq7dF0p0pFZP
 bamA==
X-Gm-Message-State: ANoB5pmEaTAGfv6r0MmVLlaMiS4yhuCg2qDCdg2gBoJ9GsFifeY5Ikq1
 k3ywQtEBNhqC9Zjo057aYDY=
X-Google-Smtp-Source: AA0mqf678NTkoa7EQM8cCHrvXR6/pbUbnlv8Yp9/z1G1P92agRhCGgo/IIaZNJu+/k1nLxvCHxMOcQ==
X-Received: by 2002:a17:902:e5c1:b0:189:8c37:6f16 with SMTP id
 u1-20020a170902e5c100b001898c376f16mr18379118plf.69.1669861173354; 
 Wed, 30 Nov 2022 18:19:33 -0800 (PST)
Received: from MBP (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 a15-20020aa78e8f000000b005743cdde1a7sm2020263pfr.82.2022.11.30.18.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Nov 2022 18:19:32 -0800 (PST)
References: <20221130130830.97199-1-schspa@gmail.com>
 <Y4da9/BHrEqgwq4q@codewreck.org>
User-agent: mu4e 1.8.10; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Thu, 01 Dec 2022 10:14:35 +0800
In-reply-to: <Y4da9/BHrEqgwq4q@codewreck.org>
Message-ID: <m2r0xj6f2x.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Schspa Shi wrote on Wed, Nov 30, 2022 at 09:08:31PM +0800:
 >> When the transport layer of fs cancels the request, it is deleted from
 the >> client side. But the server can send a response with the f [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1p0ZAp-001wTt-2D
Subject: Re: [V9fs-developer] [PATCH v2] 9p/fd: set req refcount to zero to
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
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


asmadeus@codewreck.org writes:

> Schspa Shi wrote on Wed, Nov 30, 2022 at 09:08:31PM +0800:
>> When the transport layer of fs cancels the request, it is deleted from the
>> client side. But the server can send a response with the freed tag.
>> 
>> When the new request allocated, we add it to idr, and use the id form idr
>> as tag, which will have the same tag with high probability. Then initialize
>> the refcount after adding it to idr.
>
> ultimately this bug has nothing to do with tag reuse -- we don't
> actually need flush at all to trigger it.
>
> - thread1 starts new request; idr initialized with tag X
> - thread2 receives something for tag X, increments refcount before
> refcount init
> - thread1 resets refcount to two incorrectly
>
> This could happen on any new message where the server voluntarily sends
> a reply with tag X before the request has been sent; in a cyclic model
> as suggested in the other thread it would be easy to guess just last+1
> for an hypothetical attacker.
>
> This scenario with flush is just how syzbot happened to trigger it, but
> I think it's just superfluous to this commit message.
>
> A few more nitpicks on wording below; happy to adjust things myself as I
> apply patches but might as well comment first...
>
>> If the p9_read_work got a response before the refcount initiated. It will
>> use a uninitialized req, which will result in a bad request data struct.
>> 
>> There is the logs from syzbot.
>
> English: Here is ...
>
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
>> complicated than this one, but this patch seems can fix it.
>
> English: seems to fix it?
> (thanks for checking!)
>
Sorry for my bad english, this patch will fix it.

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
>>                             /* req->[refcount/tag] == uninitilzed */
>
> typo: uninitialized

thanks for check.
>
>>                             m->rreq = p9_tag_lookup(m->client, m->rc.tag);
>
> it's not obvious for someone reading this not familiar with 9p that
> lookup will increment refcount
>
>> 
>>         refcount_set(&req->refcount, 2);
>>                             << do response/error >>
>>                             p9_req_put(m->client, m->rreq);
>>                             /* req->refcount == 1 */
>> 
>>     /* req->refcount == 1 */
>>     << got a bad refcount >>
>
> it's not obvious from this going back to thread 1 with a refcount of 1
> would be a bad refcount, either.
> One possible scenario would be:
>
> 				/* increments uninitalized refcount */
>                                 req = p9_tag_lookup(tag)
>     refcount_set(req->refcount, 2)
> 				/* cb drops one ref */
> 				p9_client_cb(req)
> 				/* reader thread drops its ref:
> 				   request is incorrectly freed */
> 				p9_req_put(req)
>     /* use after free and ref underflow */
>     p9_req_put(req)
>

OK, this is more clear.

>
>
>> To fix it, we can initize the refcount to zero before add to idr.
>> 
>> Reported-by: syzbot+8f1060e2aaf8ca55220b@syzkaller.appspotmail.com
>> 
>
> There should be no empty line between the tags; tags are part of the
> "trailer" and some tools handle it as such (like git interpret-trailers),
> which would ignore that Reported-by as it is not part of the last block
> of text.
>
Thanks for reminding the format issue here.
>> Signed-off-by: Schspa Shi <schspa@gmail.com>
>> ---
>>  net/9p/client.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git a/net/9p/client.c b/net/9p/client.c
>> index aaa37b07e30a..a72cb597a8ab 100644
>> --- a/net/9p/client.c
>> +++ b/net/9p/client.c
>> @@ -297,6 +297,10 @@ p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
>>  	p9pdu_reset(&req->rc);
>>  	req->t_err = 0;
>>  	req->status = REQ_STATUS_ALLOC;
>> +	/* p9_tag_lookup relies on this refcount to be zero to avoid
>> +	 * getting a freed request.
>
> A freed request would have 0 by definition, if it isn't zero then this
> is a newly allocated uninit request, so this comment is incorrect.
>
> How about:
> 	/* refcount needs to be set to 0 before inserting into the idr
> 	 * so p9_tag_lookup does not accept a request that is not fully
> 	 * initialized. refcount_set to 2 below will mark request live.
> 	 */
>

Your comment is more clear, I will change to this one.

>> +	 */
>> +	refcount_set(&req->refcount, 0);
>>  	init_waitqueue_head(&req->wq);
>>  	INIT_LIST_HEAD(&req->req_list);
>>  

-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
