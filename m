Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EED4C790C
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 20:51:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOm2v-0004cS-1O; Mon, 28 Feb 2022 19:50:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nOm2t-0004cM-JE
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C3dWcSS2QbtXAJ1sFZCAdAVpdHzUYbBZg/+jvEoA1SI=; b=G0baNhgKVVcrMlKz/KeYlXpi3S
 NoAeLcMZh37p12yOveRESIIQRFt6LUAmcQIa37bAseoxXzesaqr/quFRfXyf+ZFLjrcc+c8UVK1aq
 NlPYBdGPMnEGhhvOA25ewWBmGCl9lhrXHbram2huPuX+D/951uJzfEMafZoER4Q6zVTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C3dWcSS2QbtXAJ1sFZCAdAVpdHzUYbBZg/+jvEoA1SI=; b=CXu3r2DQcZsDJpIo8Tl1aTeRCJ
 q3tQsVfh6am9qJhRsXUQpY6YcxGvaZjVmSjQdQQj88FuPa+V7RVAcVNZ06GFxpq6gerORTDgifiLw
 Dw+XIbryBSepNfsi4BHdFQEZYP3f45AxQ+v6gBqqd5WEfzzUue3lKqZ1Yy9WIdMPEIi0=;
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOm2p-0002Jx-RL
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:50:57 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 i10-20020a4aab0a000000b002fccf890d5fso19999074oon.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 11:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C3dWcSS2QbtXAJ1sFZCAdAVpdHzUYbBZg/+jvEoA1SI=;
 b=kHSHB9VBXG8W54yAjfKTCXs5qdT7TKEr3iR21pAQoou25n121DBGfjaVxrS9iXc/2x
 OsiB6ru2EjCgYGpRYAW/PF+Wp+zAK8gd1Vkb3erQPJdfLLdjB8V5XjyzTpzQf4jiIpYt
 lUWDvv2EJVI6SFX/diSy+cp+Zp6tXdpfph5dg9Tju6Y2peYWVxG+SMdlZOPD38hYN4ns
 ELBBcsTSulGYa8QOoaj3pAZ4FQLdPKsKNjL/wPoCdsRZSTFosriJRgrI9qu8CukINwZI
 DJDvWWmR8ZkTxThP6jFSeHlt2IsbhYHA5qlhfwUGQ3aEG7LE+TdUZctx/93CV3QeeuKI
 5hCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C3dWcSS2QbtXAJ1sFZCAdAVpdHzUYbBZg/+jvEoA1SI=;
 b=f5uTeuC/p6+M7WvJJrAFmKk/F1+IG+BgFHkIA6J4fLNgkyKWtoT0uZwKV2pK8Fs6CI
 dNSatmXDvQ+pL6IGX9C9cAYBiFJR4PYDoS+ozNC+jXGFMsSRIMsOj3hcmrZo6W6+O+Su
 PQUNG+9YfwPlQjN1S+pXIe3SBFGzQuHLySPJqWcj7skdh0tJofiu0Jd4gqcHFN4z2/1y
 4BPg2RzopRVvgl3HYqDY6/Ghc8Gx/K8eIfYYcRzLQaddkI/D37VNYPfKoW7ZorIQUzXP
 syLWwenRU459nEPwxYCHllJVu/TsNP04/2vthQB7Vxy4jR6cCtxGKxwIhWuNgpIs3++8
 +Tbw==
X-Gm-Message-State: AOAM5337PTmEX5V01g+0h9yUESv45O8MXaM3qgd9f8kIrbfJeZIth7rD
 IqRPOnGSUZiXOpPcNYT3fGHPV3RYij5SqjxOqSabvlkq
X-Google-Smtp-Source: ABdhPJxxzEuXzpfgE8krIeZHIWvk88/TvCMITUbtGkuCesj1AhMSj7Z9Q0j2TZMWQ1cq7EHhNh7EITCXecOq6Ke1BdU=
X-Received: by 2002:a05:6870:1481:b0:d7:30a3:1f39 with SMTP id
 k1-20020a056870148100b000d730a31f39mr2968359oab.14.1646077850052; Mon, 28 Feb
 2022 11:50:50 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
 <CAP6exYKWNY+rmZVPs8LoyeabD9oXOQScSftcuNcFK3Th1=F5Sw@mail.gmail.com>
 <CAFkjPTnmNcf3xurJ8hG0AtghGoi7qZkgnO40oixJ+YORiu3-Og@mail.gmail.com>
 <CAP6exYKEZPHpoL67uU64w-D2AFboMdaxvCfeVh=1CBKQ89YL2g@mail.gmail.com>
 <CAFkjPTka31vWZ0zgd=BmuEn7Pw4Ho5f+7koXodijq-sdt0Oyqw@mail.gmail.com>
In-Reply-To: <CAFkjPTka31vWZ0zgd=BmuEn7Pw4Ho5f+7koXodijq-sdt0Oyqw@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 28 Feb 2022 11:50:38 -0800
Message-ID: <CAP6exY+sjP0YqF27VT8X6d_qSHuYvep_Jj10qZnMJWY_J-hWWQ@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  got it. Thanks. On Mon, Feb 28, 2022 at 11:33 AM Eric Van
 Hensbergen wrote: > > No, you misunderstood me, the different open mode would
 only be for the special files so normal files wouldn't need to change anything
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nOm2p-0002Jx-RL
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

got it. Thanks.

On Mon, Feb 28, 2022 at 11:33 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> No, you misunderstood me, the different open mode would only be for the special files so normal files wouldn't need to change anything and then I could do it all over the same mount instead of having different mounts for different purposes which seems...excessive.  But really what I'm probably reacting to is thinking about fresh connections - one could send multiple attaches, but we can't communicate mount options in Tattach just Tverison -- that's arbitrary and could be changed I suppose.  But like you said, the behavior you are defining is client side anyways so we'd just need the client to know whether or not the file was static -- that is something that could be communicated in a Qid - qid.version == 0 is supposed to identify synthetics anyways, so maybe we already have that mechanism.
>
>       -eric
>
>
>       -eric
>
>
> On Mon, Feb 28, 2022 at 1:25 PM ron minnich <rminnich@gmail.com> wrote:
>>
>> I want a read/write file system. for reading and writing plain files,
>> and creating directories, that's it. Usage has to be transparent, I
>> can't ask all those linux programs to change their open modes, so that
>> sounds like a mount option to me at least. But I'm still fairly
>> certain we can change client behavior to get what we want. In my view
>> it's all about Tread, which is most packets; and Twrite, which when I
>> measured it was much fewer packets. The rest are much less common, or
>> at least used to be (well OK linux seems to be a bit more anxious to
>> Tstat things?)
>>
>> btw, fun fact: out of 3M files in my ~, 82% are 16K or less :-); 57%
>> are 4k or less :-) This in a nutshell is why big MSIZE is not always
>> the win it looks. Also from earlier lives, a big issue on writing
>> with. e.g, gnu ld, was its propensity to do lots of 1 or 4 byte writes
>> (not 1 or 4K; one or four BYTE). I put write coalescing into the
>> client in 1998 and it was dramatically better. Your caching would help
>> there.
>>
>>
>> ron
>>
>> On Mon, Feb 28, 2022 at 11:07 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>> >
>> > Well, that's part of my question - there's lots of per-session semantics that could be implemented by a synthetic file server that would require server coordination to not break.  however, if all you are doing is serving a static file system then its less of a concern -- there are obviously ways you can screw yourself over, but those can happen outside of the 9p context so playing games with caching, read-ahead, and asynchrony don't necessarily leave you in a worse spot.
>> >
>> > Contrary to my previous opinion of handling this with protocol/mount options - I do wonder if many of these could be achieved with different open modes (which a client could choose to make default and we could override when what we were accessing was a FIFO or device....)
>> >
>> > On Mon, Feb 28, 2022 at 1:02 PM ron minnich <rminnich@gmail.com> wrote:
>> >>
>> >> eric, what do you mean by a client? A user or a program or a computer
>> >> or just the FID from a Tmount?
>> >>
>> >> in any event, I think the fence logic should be in the client and for
>> >> sure should not require any change to servers.
>> >>
>> >> i.e., servers would not be responsible for serializing on the FID,
>> >> just the client.
>> >>
>> >> ron
>> >>
>> >> On Mon, Feb 28, 2022 at 10:55 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>> >> >
>> >> > For Treads, even if folks use them for special things there's nothing to say we couldn't restrict the new "fast" semantics to a specific version of the protocol or certain options.  This was implicit with the cache options (they wouldn't work with devices either).
>> >> >
>> >> > For fences, are you only considering a single client? That simplifies many things -- and I guess that's why you are saying you can do it all on the client.
>> >> >
>> >> >       -eric
>> >> >
>> >> >
>> >> >
>> >> >
>> >> > On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:
>> >> >>
>> >> >> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
>> >> >>
>> >> >> > Forgive the naive question, but would this change entail that a
>> >> >> > client may not observe its own writes? (Because the client may send
>> >> >> > Twrite and Tread but the Tread may be served first, I mean.) Isn't that
>> >> >> > undesirable? What do other file systems do?
>> >> >>
>> >> >> I have thought about this, and think we can resolve it on the client
>> >> >> side with some rules.
>> >> >>
>> >> >> Treads are considered to be independent of each other and idempotent (NFS rules)
>> >> >> - This will break for things like mice, sockets, etc. Do we care? Do
>> >> >> people on LInux use
>> >> >> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
>> >> >>
>> >> >> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
>> >> >> blocks on pending reads, and
>> >> >> new reads block on the Twrite to finish.
>> >> >>
>> >> >> Tclunk acs like a fence for all pending IO. If there are Twrites, it
>> >> >> blocks on them, else
>> >> >> it blocks on pending reads.
>> >> >>
>> >> >>  Note that: this is all client logic. It is probably logic I will be
>> >> >> testing in Plan 9 in the next few months.
>> >> >>
>> >> >> A few other notes from a lot of years snooping Plan 9.
>> >> >>
>> >> >> The first thing everyone does to try to fix 9p slowness is "grow the
>> >> >> MSIZE." This can help, but it can hurt.
>> >> >>
>> >> >> It can help, in that, basically, for an msize like even 8K, you can
>> >> >> read the entire file in one go.
>> >> >>
>> >> >> It can hurt, in that, for really big files, with a big delay-bandwidth
>> >> >> product, you're going to get head-of-line blocking:
>> >> >> each Tread will wait on that "really big Tread" before it to finish,
>> >> >> so your time between Treads will be LARGER.
>> >> >>
>> >> >> The other issue with big MSIZE is that it also limits concurrency over
>> >> >> multiple FIDs, for the same reason: the connection
>> >> >> is not usable for blocks of time as it is moving 1M blocks for one FID.
>> >> >>
>> >> >>  Big block size is an obvious fix with subtle negative impacts.
>> >> >>
>> >> >> All this I've seen in the wild, on big machines.
>> >> >>
>> >> >> Anyway, I will try the caching stuff, sounds very interesting, and see
>> >> >> how it impacts my  cpu (github.com/u-root/cpu) command;
>> >> >> 9p performance is critical to that command.
>> >> >>
>> >> >> Thanks again for the work!
>> >> >>
>> >> >> ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
