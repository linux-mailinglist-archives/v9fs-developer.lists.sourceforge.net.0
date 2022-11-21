Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30464632FE3
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 23:32:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxFKp-0007KT-S5;
	Mon, 21 Nov 2022 22:32:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <skhan@linuxfoundation.org>) id 1oxFKn-0007KJ-HE
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 22:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C14m+5yBrv+u7QhAN78BFentZAFfnah8l0PUC4om7m8=; b=nKWHVBljokuYP2IMu7Psr6ZKHm
 P+qer2gjtmMlQqVr5OA9Qt8DPduMZvg9tIULTWr6QyVb/mpDHKhvIjfa0nslFDsthlnfgnYjwC7OR
 /kIYTiIjRaX2faFKyAzjgOssSIN4awj96vNdOAY7B3vDiaJ4PQrRseC9wp/eFCiM4e8M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C14m+5yBrv+u7QhAN78BFentZAFfnah8l0PUC4om7m8=; b=AubjUhe31TP2aXlUDcUWL9x0EQ
 a2pA2HxW1j+vLLJ4MIkWYbi0+m8nTZen69NDJr0o/i009UOamm2bDwAbuABKsd2D9a6PpzTKayA0M
 fmKkPyDR8ZOqjOBTa9hNwfe1Ym+npAEfrKJdyisnX9rTGNOv9fMGV0XLLnr07Kjmfv9A=;
Received: from mail-io1-f54.google.com ([209.85.166.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oxFKl-009DzF-7v for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 22:32:13 +0000
Received: by mail-io1-f54.google.com with SMTP id p141so9706273iod.6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 21 Nov 2022 14:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=C14m+5yBrv+u7QhAN78BFentZAFfnah8l0PUC4om7m8=;
 b=Hffgzad5MotJq5EstTpwFVQ55zJ2m4sb3dYfhAhqq6QB33wEMcRLHmm2P2eeaxcyl7
 AuWzz1/l9u/1PZyxMCWxsiA0Q6e5fRCsSvqJb8QkirXxS7f+WkWGHtcgrG5qSrXeSLS7
 dJYa3L0ToHNG/CDOCknNOKSmu/izuTLa+EFwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=C14m+5yBrv+u7QhAN78BFentZAFfnah8l0PUC4om7m8=;
 b=2goFsVfWCQ/U9IZV7Lp+Ni7s2Qgoau+irbWxyNvSm6qchFQjecAE1adqgaOIa+mKoV
 8CDjOOkLP9iTGepFXD+Qhlle+F5gP1yuSCGj7acCdHM+12HWJIjtrqDJn1uyoc670EOG
 Fsbl0CBkH0yOOtr4SJ8+6OVI8fkDjGoD8EmMgr8dOyOuSkvGSqtYwvBo/xEg9HE0tyEN
 iL3GXb660oQV8K73Wp4phNjIijeoAx78go1GM3Dukovm0eazF18eS+tcmzRVVC9aRJtd
 4xdoBMYUr1y+/5EQXKZnTuWlzzF2TINENCjjAQBS2GUCLLnxpC/75MI3rBW7QPH4uNVd
 wkzw==
X-Gm-Message-State: ANoB5pmPJtcTu67Y43e7OVdP1lwwIjIR6FYPdWnQonzepAhFb7wSU5L/
 VmaI6Nc1S4jWmdFg49dpv8Yxlw==
X-Google-Smtp-Source: AA0mqf7LzJaZLZ7BN/ieedWyHJVfNYy1D/3fvJQ9uHDra09xLMDQnM+TgsskrmQ988UMBIXzYDc/Wg==
X-Received: by 2002:a02:cba6:0:b0:375:a360:a130 with SMTP id
 v6-20020a02cba6000000b00375a360a130mr9477313jap.307.1669069925449; 
 Mon, 21 Nov 2022 14:32:05 -0800 (PST)
Received: from [192.168.1.128] ([38.15.45.1]) by smtp.gmail.com with ESMTPSA id
 f15-20020a056638112f00b0037502ffac71sm4612316jar.18.2022.11.21.14.32.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Nov 2022 14:32:04 -0800 (PST)
Message-ID: <96114bec-1df7-0dcb-ec99-4f907587658d@linuxfoundation.org>
Date: Mon, 21 Nov 2022 15:32:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Benjamin Coddington <bcodding@redhat.com>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
 <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
 <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
 <26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org>
 <A860595D-5BAB-461B-B449-8975C0424311@redhat.com>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <A860595D-5BAB-461B-B449-8975C0424311@redhat.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/21/22 15:01, Benjamin Coddington wrote: > On 21 Nov
 2022, at 16:43, Shuah Khan wrote: > >> On 11/21/22 14:40, Shuah Khan wrote:
 >>> On 11/21/22 07:34, Benjamin Coddington wrote: >>>> On 21 Nov 2 [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.54 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxFKl-009DzF-7v
Subject: Re: [V9fs-developer] [PATCH v1 2/3] Treewide: Stop corrupting
 socket's task_frag
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, samba-technical@lists.samba.org,
 Shuah Khan <skhan@linuxfoundation.org>,
 Valentina Manea <valentina.manea.m@gmail.com>, linux-nvme@lists.infradead.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Eric Dumazet <edumazet@google.com>, linux-nfs@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, Shuah Khan <shuah@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Mike Christie <michael.christie@oracle.com>,
 drbd-dev@lists.linbit.com, linux-cifs@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Mark Fasheh <mark@fasheh.com>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Anna Schumaker <anna@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Josef Bacik <josef@toxicpanda.com>, nbd@other.debian.org,
 linux-block@vger.kernel.org, David Teigland <teigland@redhat.com>,
 Joel Becker <jlbec@evilplan.org>, v9fs-developer@lists.sourceforge.net,
 Keith Busch <kbusch@kernel.org>, ceph-devel@vger.kernel.org,
 Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Jens Axboe <axboe@kernel.dk>, Chris Leech <cleech@redhat.com>,
 open-iscsi@googlegroups.com, "Martin K. Petersen" <martin.petersen@oracle.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Steve French <sfrench@samba.org>,
 =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Chuck Lever <chuck.lever@oracle.com>, Lee Duncan <lduncan@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 "David S. Miller" <davem@davemloft.net>, ocfs2-devel@oss.oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 11/21/22 15:01, Benjamin Coddington wrote:
> On 21 Nov 2022, at 16:43, Shuah Khan wrote:
> 
>> On 11/21/22 14:40, Shuah Khan wrote:
>>> On 11/21/22 07:34, Benjamin Coddington wrote:
>>>> On 21 Nov 2022, at 8:56, David Howells wrote:
>>>>
>>>>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>>>>
>>>>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>>>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>>>>> when it is safe to use current->task_frag.
>>>>>
>>>>> Um, what's task_frag?
>>>>
>>>> Its a per-task page_frag used to coalesce small writes for networking -- see:
>>>>
>>>> 5640f7685831 net: use a per task frag allocator
>>>>
>>>> Ben
>>>>
>>>>
>>>
>>> I am not seeing this in the mainline. Where can find this commit?
>>>
>>
>> Okay. I see this commit in the mainline. However, I don't see the
>> sk_use_task_frag in mainline.
> 
> sk_use_task_frag is in patch 1/3 in this posting.
> 
> https://lore.kernel.org/netdev/26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org/T/#m3271959c4cf8dcff1c0c6ba023b2b3821d9e7e99
> 

Aha. I don't have 1/3 in my Inbox - I think it would make
sense to cc people on the first patch so we can understand
the premise for the change.

thanks,
-- Shuah
  



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
