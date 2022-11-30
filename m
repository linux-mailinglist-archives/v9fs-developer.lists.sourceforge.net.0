Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC01163CDD1
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 04:29:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0Dmn-0007ng-VP;
	Wed, 30 Nov 2022 03:29:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0Dmm-0007nW-To
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 03:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lebAyROdAaGL5cCiZBzusDkqy/6QSgZX5wOW/tInSfs=; b=UnPHN08wa+JcgDA9TCc09RE5F6
 pyXS4NJB5WpBeL/ZXZPCA/6Ip2dD2wFcaUSAt8ZHRXGqNOrIgXDFscJstteTHL0Bs8jcwbihkGrdu
 8unci3KiDjyEn8Q30aR2mPqLEUTnwDQr2XfKf+qWT2fHn1dtQC2pp2MYekrYS5mr7LpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lebAyROdAaGL5cCiZBzusDkqy/6QSgZX5wOW/tInSfs=; b=aQvtJZNvLwycDwVTSGhAllKxdS
 KY8ibQpHOJBHG0N0xHrkZUXfOWp3iX2FR/DHs1hJvPnRWROqYfA3mui+bW5a/WTwxsT9bQUAOO7cm
 F65Rif6Vv3mSgQWUuWxMSv4bc0Rq1jjCJhNLonC3YRNYbeu+/6+xCbNQdhtRu34t+FzI=;
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0Dmj-000sIp-9P for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 03:29:24 +0000
Received: by mail-io1-f41.google.com with SMTP id e189so11550607iof.1
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 29 Nov 2022 19:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=lebAyROdAaGL5cCiZBzusDkqy/6QSgZX5wOW/tInSfs=;
 b=Rr7SFdLF6OgiyUEk1qJ7BaPBEicENUZMFvHE2g7BWKeTfpxBqImPa5ilJPuicb00Zm
 uwXzLXNxhKGmQ512gLv/4TIfQMw+aFi/tZbGXyURxeU7QjcP291jXTPj2X9y4nrZZEVG
 goXoRpfTUcOsYAXH7f5+3kgyczkdv8ssPbnoa/VD36K36zIJzAzKabV9MlBZyBk6TDjp
 UEGS8n9KGPxogtnRRbrLRhm/Oc/KYgXNdHqWxcO/3/nZJPX+ZRcNBBF7AzAHLvhoQ4/P
 1kULc4ILVdXlpkHK53TdOYm1J4ONcN25DuJPfOqQMkFDxqPWUC95IZIS6bHEDt7myidh
 JkCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lebAyROdAaGL5cCiZBzusDkqy/6QSgZX5wOW/tInSfs=;
 b=S2X8hOdOU1h0/sEIH4/gvAVlxB2CB6ENCOcG2xJBtlpEdY/9AvZR/Sjhzxa1oAqUeh
 ebX0b6W50Y0cx57h5zVfbhp7MJ6JWLs4qQ6ES9IYv6FLdZEB49+HQUyqN4DIf99YWypT
 oPjdWOagxylCCLsOa2AyArMvNppVJ4QYTMHt8esXc9Lg8GOA8bJruIGcJLPGscCmHi+f
 QUc+XpbE52s9W6YVsrFuCAEgI0xytLRY45Xow2iVaaN3wC+GVDNHpmGfIN/OtAvVLpaU
 OTEdYgax8Mjza3PlPRLW83iY8WrWMA/sy9/ZrK8se19foE1lMK4Y6C0o2hmkB9g6IvC7
 serg==
X-Gm-Message-State: ANoB5pmLSv3we4kBaYYyokwMOxbSYwRxzJUXCm1dlsNAZ5pED2KEJMuq
 0/GJq2jA3ZP5ER7Rq7+CpVuqKy1+eTbAJg==
X-Google-Smtp-Source: AA0mqf7PlUk1CrkpLXkz5ugfn+yZrUlhlMt8T6g9PiIMso4FB57pXqityTW9GopEHFq6uX5fd5fQdw==
X-Received: by 2002:a05:6638:2b7:b0:389:c2fd:bc13 with SMTP id
 d23-20020a05663802b700b00389c2fdbc13mr10968187jaq.12.1669778955615; 
 Tue, 29 Nov 2022 19:29:15 -0800 (PST)
Received: from MBP (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 s1-20020a92cc01000000b00302b029131bsm164814ilp.61.2022.11.29.19.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 19:29:15 -0800 (PST)
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org> <m2r0xli1mq.fsf@gmail.com>
User-agent: mu4e 1.8.10; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Wed, 30 Nov 2022 11:26:02 +0800
In-reply-to: <m2r0xli1mq.fsf@gmail.com>
Message-ID: <m2ilix6ry5.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Schspa Shi writes: > > >> Schspa Shi wrote on Wed, Nov 30,
 2022 at 12:22:51AM +0800: >>> The transport layer of fs does not fully support
 the cancel request. >>> When the request is in the REQ_STATUS_SENT state,
 p9_fd [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.41 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1p0Dmj-000sIp-9P
Subject: Re: [V9fs-developer] [PATCH] 9p: fix crash when transaction killed
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


Schspa Shi <schspa@gmail.com> writes:

> asmadeus@codewreck.org writes:
>
>> Schspa Shi wrote on Wed, Nov 30, 2022 at 12:22:51AM +0800:
>>> The transport layer of fs does not fully support the cancel request.
>>> When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled
>>> will forcibly delete the request, and at this time p9_[read/write]_work
>>> may continue to use the request. Therefore, it causes UAF .
>>> 
>>> There is the logs from syzbot.
>>> 
>>> Corrupted memory at 0xffff88807eade00b [ 0xff 0x07 0x00 0x00 0x00 0x00
>>> 0x00 0x00 . . . . . . . . ] (in kfence-#110):
>>>  p9_fcall_fini net/9p/client.c:248 [inline]
>>>  p9_req_put net/9p/client.c:396 [inline]
>>>  p9_req_put+0x208/0x250 net/9p/client.c:390
>>>  p9_client_walk+0x247/0x540 net/9p/client.c:1165
>>>  clone_fid fs/9p/fid.h:21 [inline]
>>>  v9fs_fid_xattr_set+0xe4/0x2b0 fs/9p/xattr.c:118
>>>  v9fs_xattr_set fs/9p/xattr.c:100 [inline]
>>>  v9fs_xattr_handler_set+0x6f/0x120 fs/9p/xattr.c:159
>>>  __vfs_setxattr+0x119/0x180 fs/xattr.c:182
>>>  __vfs_setxattr_noperm+0x129/0x5f0 fs/xattr.c:216
>>>  __vfs_setxattr_locked+0x1d3/0x260 fs/xattr.c:277
>>>  vfs_setxattr+0x143/0x340 fs/xattr.c:309
>>>  setxattr+0x146/0x160 fs/xattr.c:617
>>>  path_setxattr+0x197/0x1c0 fs/xattr.c:636
>>>  __do_sys_setxattr fs/xattr.c:652 [inline]
>>>  __se_sys_setxattr fs/xattr.c:648 [inline]
>>>  __ia32_sys_setxattr+0xc0/0x160 fs/xattr.c:648
>>>  do_syscall_32_irqs_on arch/x86/entry/common.c:112 [inline]
>>>  __do_fast_syscall_32+0x65/0xf0 arch/x86/entry/common.c:178
>>>  do_fast_syscall_32+0x33/0x70 arch/x86/entry/common.c:203
>>>  entry_SYSENTER_compat_after_hwframe+0x70/0x82
>>> 
>>> Below is a similar scenario, the scenario in the syzbot log looks more
>>> complicated than this one, but the root cause seems to be the same.
>>> 
>>>      T21124               p9_write_work        p9 read_work
>>> ======================== first trans =================================
>>> p9_client_walk
>>>   p9_client_rpc
>>>     p9_client_prepare_req
>>>     /* req->refcount == 2 */
>>>     c->trans_mod->request(c, req);
>>>       p9_fd_request
>>>         req move to unsent_req_list
>>>                             req->status = REQ_STATUS_SENT;
>>>                             req move to req_list
>>>                             << send to server >>
>>>     wait_event_killable
>>>     << get kill signal >>
>>>     if (c->trans_mod->cancel(c, req))
>>>        p9_client_flush(c, req);
>>>          /* send flush request */
>>>          req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
>>> 		 if (c->trans_mod->cancelled)
>>>             c->trans_mod->cancelled(c, oldreq);
>>>               /* old req was deleted from req_list */
>>>               /* req->refcount == 1 */
>>>   p9_req_put
>>>     /* req->refcount == 0 */
>>>     << preempted >>
>>>                                        << get response, UAF here >>
>>>                                        m->rreq = p9_tag_lookup(m->client, m->rc.tag);
>>>                                          /* req->refcount == 1 */
>>>                                        << do response >>
>>>                                        p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);
>>>                                          /* req->refcount == 0 */
>>>                                          p9_fcall_fini
>>>                                          /* request have been freed */
>>>     p9_fcall_fini
>>>      /* double free */
>>>                                        p9_req_put(m->client, m->rreq);
>>>                                          /* req->refcount == 1 */
>>> 
>>> To fix it, we can wait the request with status REQ_STATUS_SENT returned.
>>
>> Christian replied on this (we cannot wait) but I agree with him -- the
>
> Yes, this is where I worry about too, this wait maybe cause a deadlock.
>

@Christian: It seems we don't need this wait, The problem maybe cause by
lack of lock in p9_tag_lookup.

>> scenario you describe is proteced by p9_tag_lookup checking for refcount
>> with refcount_inc_not_zero (p9_req_try_get).
>
> Thanks for pointing out the zero value check here, the scene in the
> commit message does not hold.
>
>>
>> The normal scenarii for flush are as follow:
>>  - cancel before request is sent: no flush, just free
>>  - flush is ignored and reply comes first: we get reply from original
>> request then reply from flush
>>  - flush is handled and reply never comes: we only get reply from flush
>>
>> Protocol-wise, we can safely reuse the tag after the flush reply got
>> received; and as far as I can follow the code we only ever free the tag
>> (last p9_call_fini) after flush has returned so the entry should be
>> protected.
>>
>> If we receive a response on the given tag between cancelled and the main
>> thread going out the request has been marked as FLSHD and should be
>> ignored. . . here is one p9_req_put in p9_read_work() in this case but
>> it corresponds to the ref obtained by p9_tag_lookup() so it should be
>> valid.
>>
>>
>> I'm happy to believe we have a race somewhere (even if no sane server
>> would produce it), but right now I don't see it looking at the code.. :/
>
> And I think there is a race too. because the syzbot report about 9p fs
> memory corruption multi times.
>
> As for the problem, the p9_tag_lookup only takes the rcu_read_lock when
> accessing the IDR, why it doesn't take the p9_client->lock? Maybe the
> root cause is that a lock is missing here.

Add Christian Schoenebeck for bad mail address typo.

-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
