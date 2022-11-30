Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E55E63CDA6
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Nov 2022 04:04:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p0DOx-0007QC-FM;
	Wed, 30 Nov 2022 03:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schspa@gmail.com>) id 1p0DOv-0007Q6-J9
 for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 03:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-reply-to:
 Date:Subject:Cc:To:From:References:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7XROP14rJYXzTuiWyk83t4xQBYY/HpEJYx05llAt13k=; b=hiQQWgS9sBQ74knpigELWRFXDd
 nNb6TLPDqQOp3ZoDHSFZZkCQJsEGQPzsgHlD5M2qiJnIkzh66mXCcwKLnZqlp3Ndl2kbNl+cjy54a
 Zcl8BF+vl8yFC0nY9DbpCd8kt3m32EnzSnlIVtXB5mlJKiFhi3gR/mP8h22LddJpZx40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
 References:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7XROP14rJYXzTuiWyk83t4xQBYY/HpEJYx05llAt13k=; b=VGSANDpzQ3w8nymr3sExXnHb7j
 YuMYYCuje3Flmkzw6fxkBuBffLLRR+7CETWRHpf87wr25NRFl/wtHDuthVfSgn1O8X3GTB2LNbGR1
 KqZojy7Jr4uDSOy6YDm69cVbmgLq5Vv4pGs3qcc1SvRnfwV5o+C86/AvpHUGQDO6HHoI=;
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p0DOu-000r52-SB for v9fs-developer@lists.sourceforge.net;
 Wed, 30 Nov 2022 03:04:45 +0000
Received: by mail-io1-f51.google.com with SMTP id p193so1370555iod.6
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 29 Nov 2022 19:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
 bh=7XROP14rJYXzTuiWyk83t4xQBYY/HpEJYx05llAt13k=;
 b=cyY9BuXbzMD69BfeS2Dd6RN3Ry7Gv3A77tITGI6/lP9cguoyqH5AfI5WHC6RCheoBA
 +iD7K6IYuBwxKQiHSZeA0uEf7L6Jyd8w/S1coBbXGeKWV2fMDH35mZutTa+wMrA/uQXm
 jQ/Rxzw8W2JLQ+vE0XOy/MPvONypUsx56jgwoNYVzwV7K41ovOHCTiflRG0MQekiHbER
 ICDDd+WD6psqGVUqiGVuSNmU6LNzd2S5mD0dBSGC7Ag5medYm/G5GAJjcvyh8VtzlmDf
 WFA773NstUiaK0N47tzS4dYOWuyvOBDqORhJQtQpzGmZKJKeWLZgeEPgBQYPCAPev0tY
 /rTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
 :user-agent:references:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7XROP14rJYXzTuiWyk83t4xQBYY/HpEJYx05llAt13k=;
 b=lO1YhRTZaptXgROwjj7hVZgzJGzpfWD/mGub+I58vyrdVxMMQRcVGGSAbueMKiCauO
 P8K5woi3C1G4INqfKWhDd3MsQOP9Bs0/u8g9umUJrEfFKVVgykvEeA22dnr2nhTXigq6
 P+hShwhF4YB/b8izeo655D4bDgRKQOK00hoHBo6vgd2eQPULEiYLNj/GpU15U8tQE6N5
 ZHf+O+QJO4e4Ete3f84W+NE15uL4t+bqVv/UQ6ZbCp0/2NEX7CLiNAcqVc1C+k9l7SwN
 KTHy7d3UmfPIXBKXsmM0rtzsnHPCXc9PmK+XxmPxrBG1yTNqgdfHn+uBQpqDiYiOmNkG
 zTzA==
X-Gm-Message-State: ANoB5plOjri3YlI9CVDN4x5DO7R6kn9P8f0K2dumdFG3rHyB0wBIHuaB
 4eTe/5wCLhUP0ERavUP3o0A=
X-Google-Smtp-Source: AA0mqf6oQ4P/klApsV6gYwa958mnSWHwAtPDRcf0GPh9AmhZNKq9TfbKoldVGzyn1LQdcWLyWFEJ3w==
X-Received: by 2002:a02:2710:0:b0:36c:c1d4:d3e0 with SMTP id
 g16-20020a022710000000b0036cc1d4d3e0mr28505285jaa.181.1669777479139; 
 Tue, 29 Nov 2022 19:04:39 -0800 (PST)
Received: from MBP (ec2-18-117-95-84.us-east-2.compute.amazonaws.com.
 [18.117.95.84]) by smtp.gmail.com with ESMTPSA id
 l66-20020a6b3e45000000b006dfbf3fe79dsm114587ioa.32.2022.11.29.19.04.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 19:04:38 -0800 (PST)
References: <20221129162251.90790-1-schspa@gmail.com>
 <Y4aJzjlkkt5VKy0G@codewreck.org>
User-agent: mu4e 1.8.10; emacs 28.2
From: Schspa Shi <schspa@gmail.com>
To: asmadeus@codewreck.org
Date: Wed, 30 Nov 2022 10:22:44 +0800
In-reply-to: <Y4aJzjlkkt5VKy0G@codewreck.org>
Message-ID: <m2r0xli1mq.fsf@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Schspa Shi wrote on Wed, Nov 30, 2022 at 12:22:51AM +0800:
 >> The transport layer of fs does not fully support the cancel request. >>
 When the request is in the REQ_STATUS_SENT state, p9_fd_cancelle [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.51 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schspa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p0DOu-000r52-SB
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
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.co,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


asmadeus@codewreck.org writes:

> Schspa Shi wrote on Wed, Nov 30, 2022 at 12:22:51AM +0800:
>> The transport layer of fs does not fully support the cancel request.
>> When the request is in the REQ_STATUS_SENT state, p9_fd_cancelled
>> will forcibly delete the request, and at this time p9_[read/write]_work
>> may continue to use the request. Therefore, it causes UAF .
>> 
>> There is the logs from syzbot.
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
>> complicated than this one, but the root cause seems to be the same.
>> 
>>      T21124               p9_write_work        p9 read_work
>> ======================== first trans =================================
>> p9_client_walk
>>   p9_client_rpc
>>     p9_client_prepare_req
>>     /* req->refcount == 2 */
>>     c->trans_mod->request(c, req);
>>       p9_fd_request
>>         req move to unsent_req_list
>>                             req->status = REQ_STATUS_SENT;
>>                             req move to req_list
>>                             << send to server >>
>>     wait_event_killable
>>     << get kill signal >>
>>     if (c->trans_mod->cancel(c, req))
>>        p9_client_flush(c, req);
>>          /* send flush request */
>>          req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
>> 		 if (c->trans_mod->cancelled)
>>             c->trans_mod->cancelled(c, oldreq);
>>               /* old req was deleted from req_list */
>>               /* req->refcount == 1 */
>>   p9_req_put
>>     /* req->refcount == 0 */
>>     << preempted >>
>>                                        << get response, UAF here >>
>>                                        m->rreq = p9_tag_lookup(m->client, m->rc.tag);
>>                                          /* req->refcount == 1 */
>>                                        << do response >>
>>                                        p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);
>>                                          /* req->refcount == 0 */
>>                                          p9_fcall_fini
>>                                          /* request have been freed */
>>     p9_fcall_fini
>>      /* double free */
>>                                        p9_req_put(m->client, m->rreq);
>>                                          /* req->refcount == 1 */
>> 
>> To fix it, we can wait the request with status REQ_STATUS_SENT returned.
>
> Christian replied on this (we cannot wait) but I agree with him -- the

Yes, this is where I worry about too, this wait maybe cause a deadlock.

> scenario you describe is proteced by p9_tag_lookup checking for refcount
> with refcount_inc_not_zero (p9_req_try_get).

Thanks for pointing out the zero value check here, the scene in the
commit message does not hold.

>
> The normal scenarii for flush are as follow:
>  - cancel before request is sent: no flush, just free
>  - flush is ignored and reply comes first: we get reply from original
> request then reply from flush
>  - flush is handled and reply never comes: we only get reply from flush
>
> Protocol-wise, we can safely reuse the tag after the flush reply got
> received; and as far as I can follow the code we only ever free the tag
> (last p9_call_fini) after flush has returned so the entry should be
> protected.
>
> If we receive a response on the given tag between cancelled and the main
> thread going out the request has been marked as FLSHD and should be
> ignored. . . here is one p9_req_put in p9_read_work() in this case but
> it corresponds to the ref obtained by p9_tag_lookup() so it should be
> valid.
>
>
> I'm happy to believe we have a race somewhere (even if no sane server
> would produce it), but right now I don't see it looking at the code.. :/

And I think there is a race too. because the syzbot report about 9p fs
memory corruption multi times.

As for the problem, the p9_tag_lookup only takes the rcu_read_lock when
accessing the IDR, why it doesn't take the p9_client->lock? Maybe the
root cause is that a lock is missing here.

-- 
BRs
Schspa Shi


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
