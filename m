Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B71E74C78D3
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 20:34:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOlmS-0006hW-6R; Mon, 28 Feb 2022 19:33:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1nOlmQ-0006hQ-Ji
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0iYNix+suP78Jdsg6xqiHJAA2fgCHOx4xoXyGKh0oAg=; b=Z1B4j+ne3BC8I5FD2u+JhRmmiR
 KjArv1cVmFt6DcxRr24rHKbH3N7Ecba+i2mfTKjb43mLNkJfyyzEDybWrQG6vCEbRvKDGwckERmTU
 RHwrsUVkUlV1iU8nSiN5gQuqrtO5KNl2JMTtbZ2tvMAlyXilo5qxYBIcM9jqxxooC20g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0iYNix+suP78Jdsg6xqiHJAA2fgCHOx4xoXyGKh0oAg=; b=A0qCOjzo2D+NZnkclHJFzWZHbW
 eVxCwjDKwFl5iCntlirWVLlOccaVcGOZP+iPG8qKObdC9c0VvKp0knOvtO9M9FPng4EgN3q/0GobJ
 eUom8gFgUb2CY619G+7nPiuiH7+KLwYO7dvpdUCnWoDCn2mAZsUbJT6iOL771soAQEio=;
Received: from mail-vs1-f41.google.com ([209.85.217.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOlmL-0001MN-EN
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:33:57 +0000
Received: by mail-vs1-f41.google.com with SMTP id d11so14136699vsm.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 11:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0iYNix+suP78Jdsg6xqiHJAA2fgCHOx4xoXyGKh0oAg=;
 b=Y7ffITkWwILVCtBXQiryKrMxrGnrMCTt0+RytnPTuU8rz61WidtvfiT6DikL3YZSXn
 b0NMPjnfyhzJs7JxuSs/YzFGeYln6nv+2uSBOVv0roPqmM+VAIJf2PoT/MolMZv0Ovsi
 cUWeoTIR7nK2wYSdbyDUlksNwi+nuveuUCCIlSo53wC28q4s7IRElPbRglGlMT7v+2si
 QvuACdtS/sXRisKs19r7+wub+vMj7sYPHRrNFJi1k1H7NKcOHelmu8RpWkxkwLID3n2n
 +RYqGiCAp5mrfcFGfrR1+FAl7vn6fbVs42RowJwmP624AsrtIcgDw8c5NPZRVPQkQ4VC
 XUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0iYNix+suP78Jdsg6xqiHJAA2fgCHOx4xoXyGKh0oAg=;
 b=kuOzRNS5BsEK6u1sSV1SViUwFH3M6yLK2+cTaXTiuCeplKzL+Omejts6+T1G293BIA
 jEOw8F+3hoonIy2MPC1C98ZhOHCZ/m1xXHMFJeQK1+QHunoacoxWRp9AR6xb9kkWtm10
 I75bDkemIsk0/E9kPq25U30TxNr7bFxadBaDas6CxgnwOS854KV5/ceK0klZGk72QH7X
 HZ8FQI9ZYFMs79i03rCtLa0/qQyogXgiXUxYjAPFuwPS2Sd1h6BryjPTjOpeLrwN2Uq9
 IZP4+n+9sTwMf3OtObCC9TfRqOkZ6Jexd8OF0q/ae69RwGjs7rlC9V2WVhBilDtQ92k+
 qELA==
X-Gm-Message-State: AOAM531Kp8qQals+FNbnMJ6BLcTgzMSm8pOPQCLagAyXQaC+9PxnRVm9
 Ve8UxzVZk2WzBi5M3fbljOPg7zHiVbIO1OFJus0d74avEAzKEA==
X-Google-Smtp-Source: ABdhPJy0kpLDynH9ye/ZaZ09ILxXYjqUV4Om85PTB8xHWu6FyMHjIK1MBijMJvA+0+dwZHDHsFitOEpAIhNsVaNYAN8=
X-Received: by 2002:a05:6102:34fa:b0:30e:3fd1:b423 with SMTP id
 bi26-20020a05610234fa00b0030e3fd1b423mr8012652vsb.24.1646076827398; Mon, 28
 Feb 2022 11:33:47 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
 <CAP6exYKWNY+rmZVPs8LoyeabD9oXOQScSftcuNcFK3Th1=F5Sw@mail.gmail.com>
 <CAFkjPTnmNcf3xurJ8hG0AtghGoi7qZkgnO40oixJ+YORiu3-Og@mail.gmail.com>
 <CAP6exYKEZPHpoL67uU64w-D2AFboMdaxvCfeVh=1CBKQ89YL2g@mail.gmail.com>
In-Reply-To: <CAP6exYKEZPHpoL67uU64w-D2AFboMdaxvCfeVh=1CBKQ89YL2g@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 28 Feb 2022 13:33:35 -0600
Message-ID: <CAFkjPTka31vWZ0zgd=BmuEn7Pw4Ho5f+7koXodijq-sdt0Oyqw@mail.gmail.com>
To: ron minnich <rminnich@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  No, you misunderstood me, the different open mode would only
 be for the special files so normal files wouldn't need to change anything
 and then I could do it all over the same mount instead of having [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.41 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nOlmL-0001MN-EN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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

No, you misunderstood me, the different open mode would only be for the
special files so normal files wouldn't need to change anything and then I
could do it all over the same mount instead of having different mounts for
different purposes which seems...excessive.  But really what I'm probably
reacting to is thinking about fresh connections - one could send multiple
attaches, but we can't communicate mount options in Tattach just Tverison
-- that's arbitrary and could be changed I suppose.  But like you said, the
behavior you are defining is client side anyways so we'd just need the
client to know whether or not the file was static -- that is something that
could be communicated in a Qid - qid.version == 0 is supposed to identify
synthetics anyways, so maybe we already have that mechanism.

      -eric


      -eric


On Mon, Feb 28, 2022 at 1:25 PM ron minnich <rminnich@gmail.com> wrote:

> I want a read/write file system. for reading and writing plain files,
> and creating directories, that's it. Usage has to be transparent, I
> can't ask all those linux programs to change their open modes, so that
> sounds like a mount option to me at least. But I'm still fairly
> certain we can change client behavior to get what we want. In my view
> it's all about Tread, which is most packets; and Twrite, which when I
> measured it was much fewer packets. The rest are much less common, or
> at least used to be (well OK linux seems to be a bit more anxious to
> Tstat things?)
>
> btw, fun fact: out of 3M files in my ~, 82% are 16K or less :-); 57%
> are 4k or less :-) This in a nutshell is why big MSIZE is not always
> the win it looks. Also from earlier lives, a big issue on writing
> with. e.g, gnu ld, was its propensity to do lots of 1 or 4 byte writes
> (not 1 or 4K; one or four BYTE). I put write coalescing into the
> client in 1998 and it was dramatically better. Your caching would help
> there.
>
>
> ron
>
> On Mon, Feb 28, 2022 at 11:07 AM Eric Van Hensbergen <ericvh@gmail.com>
> wrote:
> >
> > Well, that's part of my question - there's lots of per-session semantics
> that could be implemented by a synthetic file server that would require
> server coordination to not break.  however, if all you are doing is serving
> a static file system then its less of a concern -- there are obviously ways
> you can screw yourself over, but those can happen outside of the 9p context
> so playing games with caching, read-ahead, and asynchrony don't necessarily
> leave you in a worse spot.
> >
> > Contrary to my previous opinion of handling this with protocol/mount
> options - I do wonder if many of these could be achieved with different
> open modes (which a client could choose to make default and we could
> override when what we were accessing was a FIFO or device....)
> >
> > On Mon, Feb 28, 2022 at 1:02 PM ron minnich <rminnich@gmail.com> wrote:
> >>
> >> eric, what do you mean by a client? A user or a program or a computer
> >> or just the FID from a Tmount?
> >>
> >> in any event, I think the fence logic should be in the client and for
> >> sure should not require any change to servers.
> >>
> >> i.e., servers would not be responsible for serializing on the FID,
> >> just the client.
> >>
> >> ron
> >>
> >> On Mon, Feb 28, 2022 at 10:55 AM Eric Van Hensbergen <ericvh@gmail.com>
> wrote:
> >> >
> >> > For Treads, even if folks use them for special things there's nothing
> to say we couldn't restrict the new "fast" semantics to a specific version
> of the protocol or certain options.  This was implicit with the cache
> options (they wouldn't work with devices either).
> >> >
> >> > For fences, are you only considering a single client? That simplifies
> many things -- and I guess that's why you are saying you can do it all on
> the client.
> >> >
> >> >       -eric
> >> >
> >> >
> >> >
> >> >
> >> > On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com>
> wrote:
> >> >>
> >> >> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
> >> >>
> >> >> > Forgive the naive question, but would this change entail that a
> >> >> > client may not observe its own writes? (Because the client may send
> >> >> > Twrite and Tread but the Tread may be served first, I mean.) Isn't
> that
> >> >> > undesirable? What do other file systems do?
> >> >>
> >> >> I have thought about this, and think we can resolve it on the client
> >> >> side with some rules.
> >> >>
> >> >> Treads are considered to be independent of each other and idempotent
> (NFS rules)
> >> >> - This will break for things like mice, sockets, etc. Do we care? Do
> >> >> people on LInux use
> >> >> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
> >> >>
> >> >> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
> >> >> blocks on pending reads, and
> >> >> new reads block on the Twrite to finish.
> >> >>
> >> >> Tclunk acs like a fence for all pending IO. If there are Twrites, it
> >> >> blocks on them, else
> >> >> it blocks on pending reads.
> >> >>
> >> >>  Note that: this is all client logic. It is probably logic I will be
> >> >> testing in Plan 9 in the next few months.
> >> >>
> >> >> A few other notes from a lot of years snooping Plan 9.
> >> >>
> >> >> The first thing everyone does to try to fix 9p slowness is "grow the
> >> >> MSIZE." This can help, but it can hurt.
> >> >>
> >> >> It can help, in that, basically, for an msize like even 8K, you can
> >> >> read the entire file in one go.
> >> >>
> >> >> It can hurt, in that, for really big files, with a big
> delay-bandwidth
> >> >> product, you're going to get head-of-line blocking:
> >> >> each Tread will wait on that "really big Tread" before it to finish,
> >> >> so your time between Treads will be LARGER.
> >> >>
> >> >> The other issue with big MSIZE is that it also limits concurrency
> over
> >> >> multiple FIDs, for the same reason: the connection
> >> >> is not usable for blocks of time as it is moving 1M blocks for one
> FID.
> >> >>
> >> >>  Big block size is an obvious fix with subtle negative impacts.
> >> >>
> >> >> All this I've seen in the wild, on big machines.
> >> >>
> >> >> Anyway, I will try the caching stuff, sounds very interesting, and
> see
> >> >> how it impacts my  cpu (github.com/u-root/cpu) command;
> >> >> 9p performance is critical to that command.
> >> >>
> >> >> Thanks again for the work!
> >> >>
> >> >> ron
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
