Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D00B8572F60
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Jul 2022 09:40:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBWyq-0005Ke-HV; Wed, 13 Jul 2022 07:40:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kent.overstreet@gmail.com>) id 1oBWyp-0005KY-B8
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 07:40:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f8LMtVTNpLm99mphGsEODrdfaZdyJZiyR5/bZD+IxFc=; b=H3NRL+q7Jf9blAk+cLfsk1K+qZ
 kosK0TqJjTxijUIuJ2MaWSDsuNnTQDOvnP72MQfvsk4mjrWFBeg2uonyVrxQwjLTarXzhgEhWJrmH
 V2lXY9Phm5+Hp9NDK2xbokO9pygycrf+HnN8Ogy/8JxkfweNTMu5xy0UGmjPB3BATEvI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=f8LMtVTNpLm99mphGsEODrdfaZdyJZiyR5/bZD+IxFc=; b=AXz1eDUEiPxTKU4keLa13ewc0/
 67QW34HavPvh0wixgM+oMwvNYQl8yp3UyHGGpMl2o2mP6A+DjkZPGyNvFwxmI7jOWXBpSSz0WT0bS
 P6R7ZDOfNWnZDwe67xLD2gpSmqtuJh/Ftt/cekT3i2cpyh0BfeZx3HWyaDWe7h+qgJwo=;
Received: from mail-qk1-f180.google.com ([209.85.222.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oBWyo-0002cs-9b
 for v9fs-developer@lists.sourceforge.net; Wed, 13 Jul 2022 07:40:18 +0000
Received: by mail-qk1-f180.google.com with SMTP id i2so6006728qkm.8
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 13 Jul 2022 00:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=f8LMtVTNpLm99mphGsEODrdfaZdyJZiyR5/bZD+IxFc=;
 b=Ce2G/CgloTyx3KJeqJbLG6cM814F7ZoMy//mdEpAuNfsFGLZctjxAwOc565n4tXFyZ
 jE95WbZMWPK2fMHz5fudJplbKLiXeKjoOyJZHmRGCweyeWetQU9U5eJcFC9wOQmCV2Y4
 bRI6EZ+OdnDrk1yfdDNKF4hVRStwRdmmjHpRiCjVePkKQvKQaJmaaddVaPz8KJRSMfXq
 m0Z0Aw+UNFVffGCikt3/04SBu5UpX8Tpfrrn8ursvGbpQxGI2nDTSWUiAyr+ac/fjgs4
 utgR9EaIC0MxbpktVv0CQzoOA8hxRrDKKCI7KKBSBctpynR1n0NKZUkXQWcWLQwIUqyx
 kh6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=f8LMtVTNpLm99mphGsEODrdfaZdyJZiyR5/bZD+IxFc=;
 b=xBraqA00puYSpmFpjEir8kRhJadF3mWkag+7uFVAjg7RAyIqN1OyOU3th1ccfcZEkp
 YP6WYOWdTB/aW0F1/7TG4sl1/qrhO4SDaZoo0D55vS2IdRAgsltHr522omsTAZK0vNUs
 qJ27oPxiUtVQKEUfp3isWb6CqVNOZxX3GatBc8SBdFXYoiTTZ++9pBejhXL8a4Y/6epM
 s1jK7FzT4ggyg7lvfshkqkrDyDMuSDMTRVPNaMvRQh3uH0Uv4tC1ZJ1epxGtJjOx5yCc
 1CusxCUMT1u5/+fBZIjN9ejt8WYlZBh8ELz2jxwpC4W2a2aeY0QnajSQ0rwz8x8rSWsx
 qz6w==
X-Gm-Message-State: AJIora+xR6tclWg8nUSMUrVtgSDaPsXTLZJGeU7IxEGQsxbf9cfA9R35
 oOlFxdGqPjC5VK5IHYDwsQ==
X-Google-Smtp-Source: AGRyM1s6c45gwft70lFlXJ2Z8ydYkPXE++6fKCShXnhvjkuZcSssCeTYHkI5BOj3yQdIO8ZJoojEeQ==
X-Received: by 2002:a05:620a:2681:b0:6b5:b547:40d with SMTP id
 c1-20020a05620a268100b006b5b547040dmr1461969qkp.34.1657698012391; 
 Wed, 13 Jul 2022 00:40:12 -0700 (PDT)
Received: from [192.168.1.210] (c-73-219-103-14.hsd1.vt.comcast.net.
 [73.219.103.14]) by smtp.gmail.com with ESMTPSA id
 w4-20020a05620a424400b006aedb35d8a1sm11724945qko.74.2022.07.13.00.40.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Jul 2022 00:40:11 -0700 (PDT)
Message-ID: <a4d7f359-c430-6487-ec38-009bc2af2e97@gmail.com>
Date: Wed, 13 Jul 2022 03:40:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <12950409.o0bIpVV1Ut@silver>
 <20220713041700.2502404-1-asmadeus@codewreck.org>
 <0aa8323d-9461-a861-ac35-6952e7aeaf93@gmail.com>
 <Ys5wRdSwtTeLF6nc@codewreck.org>
From: Kent Overstreet <kent.overstreet@gmail.com>
In-Reply-To: <Ys5wRdSwtTeLF6nc@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/13/22 03:12, Dominique Martinet wrote: > Kent Overstreet
 wrote on Wed, Jul 13, 2022 at 02:39:06AM -0400: >> On 7/13/22 00:17, Dominique
 Martinet wrote: >>> TFLUSH is called while the thread still [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kent.overstreet[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1oBWyo-0002cs-9b
Subject: Re: [V9fs-developer] [RFC PATCH] 9p: forbid use of mempool for
 TFLUSH
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 Greg Kurz <groug@kaod.org>, v9fs-developer@lists.sourceforge.net,
 Suren Baghdasaryan <surenb@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 7/13/22 03:12, Dominique Martinet wrote:
> Kent Overstreet wrote on Wed, Jul 13, 2022 at 02:39:06AM -0400:
>> On 7/13/22 00:17, Dominique Martinet wrote:
>>> TFLUSH is called while the thread still holds memory for the
>>> request we're trying to flush, so mempool alloc can deadlock
>>> there. With p9_msg_buf_size() rework the flush allocation is
>>> small so just make it fail if allocation failed; all that does
>>> is potentially leak the request we're flushing until its reply
>>> finally does come.. or if it never does until umount.
>>
>> Why not just add separate mempools for flushes? We don't have to allocate
>> memory for big payloads so they won't cost much, and then the IO paths will
>> be fully mempool-ified :)
> 
> I don't think it really matters either way -- I'm much more worried
> about the two points I gave in the commit comment section: mempools not
> being shared leading to increased memory usage when many mostly-idle
> mounts (I know users who need that), and more importantly that the
> mempool waiting is uninterruptible/non-failible might be "nice" from the
> using mempool side but I'd really prefer users to be able to ^C out of
> a mount made on a bad server getting stuck in mempool_alloc at least.

We should never get stuck allocating memory - if that happens, game 
over, system can no longer make forward progress.

(oh, that does give me an idea: Suren just implemented a code tagging 
mechanism for tracking memory allocations by callsite, and I was talking 
about using it for tracking latency. Memory allocation latency would be 
a great thing to measure, it's something we care about and we haven't 
had a good way of measuring it before).

> It looked good before I realized all the ways this could hang, but now I
> just think for something like 9p it makes more sense to fail the
> allocation and the IO than to bounce forever trying to allocate memory
> we don't have.

A filesystem that randomly fails IOs is, fundamentally, not a filesystem 
that _works_. This whole thing started because 9pfs failing IOs has been 
breaking my xfstests runs - and 9pfs isn't the thing I'm trying to test!

Local filesystems and the local IO stack have always had this 
understanding - that IO needs to _just work_ and be able to make forward 
progress without allocating additional memory, otherwise everything 
falls over because memory reclaim requires doing IO. It's fundamentally 
no different with network filesystems, the cultural expectation just 
hasn't been there historically and not for any good technical reason - 
it's just that in -net land dropping packets is generally a fine thing 
to do when you have to - but it's really not in filesystem land, not if 
you want to make something that's reliable under memory pressure!

> Let's first see if you still see if you still see high order allocation
> failures when these are made much less likely with Chritisan's patch.

Which patch is that? Unless you're talking about my mempool patch?

> What I intend to push this cycle is in
> https://github.com/martinetd/linux/commits/9p-test
> up to 'net/9p: allocate appropriate reduced message buffers'; if you can
> easily produce them I'd appreciate if you could confirm if it helps.
> 
> (just waiting for Chritian's confirmation + adjusting the strcmp for
> rdma before I push it to 9p-next)
> --
> Dominique
> 



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
