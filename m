Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B87D4C786F
	for <lists+v9fs-developer@lfdr.de>; Mon, 28 Feb 2022 20:02:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nOlHg-0008QH-MY; Mon, 28 Feb 2022 19:02:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nOlHe-0008Q9-R3
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gHt7ouoOmUkOfz7mr06vlS15Cs8tSfcASyWgub+IhiA=; b=Mj++PXvRYh0rB3Sjk/HBPSj8VG
 71wbNho31UkUsziu/pL03uS1aCWqPkySBC+SiumApaOny9CjOoiCM4aRrMsqE2Qhw/XXKrIaCwJ80
 7EGK3bcFaZZkNBNzSLM2X9WnDCeEy8CHbIBF2Bg0sxVQhgeHlFkYSeC6F3+RRggJ0Z+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gHt7ouoOmUkOfz7mr06vlS15Cs8tSfcASyWgub+IhiA=; b=W/73eMALMI4TYPB+j12h5A244U
 GLsSDmrhlD8GcyE4eik06F1Oi0aKENSTuVs1qewrA9mTOY0r12lacEw2erBMh32ctI4qv9npymtbX
 EofgzYCNQiP9tgbGfQMf+58AFWHo5KizJuVNfpT0fLObtaHRX7N4U4LSj1kw3c8xLd8U=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOlHb-00088c-1v
 for v9fs-developer@lists.sourceforge.net; Mon, 28 Feb 2022 19:02:09 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 l21-20020a056830239500b005afd2a7eaa2so7431544ots.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 11:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gHt7ouoOmUkOfz7mr06vlS15Cs8tSfcASyWgub+IhiA=;
 b=LwcgNfMlgX8aGNbLFoh8Wgi5aGpUj0tiPj3f9wkmtBTP+/0vuELHMONQQwHg+XAMih
 ACUbm31YTst4OwYuSio1aKaVMMmavv2LVSIiJGumIAONgek4K81AQy0PuQe369/t2H6v
 3UHpWW0CewCSjb2wkTy2cKnYOgiqbSAwvq/K4bzh8rSDkaC/ttyWUhbM+6VjrMbjuJV7
 rus/C+Ni02hDIV6Ogp8VPfcOE7QysuC4+6ReWIi9muB9HbNmqaiRdJqurwuK3CTq5jw2
 YULe4GUvQ+53XfcclivfB45N1NJ3squUj4n+8bqRUQsgPdgn3l4Z3Wpl80wtB2Os1+fB
 LW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gHt7ouoOmUkOfz7mr06vlS15Cs8tSfcASyWgub+IhiA=;
 b=JY9QLZALT4Kcd5TN3EQgQyu+z22uoC1skW4TztskrGKS3recsYMQPv8VSa8N5LwhVD
 gvor17ddMtXoO+Bctrc3vXMHU5P1uAze4JTIboLqZoIecRAflmkV6hF64ax3TxDGASHT
 UIkto+KzoV/T4ZW7ihCKhEh38PRqiIRLG0jeyCOt+4rPNOWlvqnAmrPiimyiaWZa1Pp6
 kBdolxZALsLnt16SfvNcxFK6p5M2kyIfvGeO/+ZzV2qFIMH6FkG5LBm+gD9T2HCKE2qu
 mbGBJ6wKeXaOXZVocOipmmn5IiEvZSoXtUWYdEKC4A8pcwt00DQZtlMxtSxHC5n64kbQ
 WNvw==
X-Gm-Message-State: AOAM531qoOE/0vxzgCKKphtOPqfaqNH2Ypadg9B7EXOVINVm5spDvC73
 Mh0KJOmnRoQdutKP+YgQTf3RkxIUlLOq4lvT0JsB9bX2
X-Google-Smtp-Source: ABdhPJxnjAnmbr8DUrbkciawloj1s6079LgERffTfNgvaEBRJwNGqBxqkzurgqS0HlVPBB8AcWHzX+/7Z43VZzE6eEc=
X-Received: by 2002:a05:6830:342:b0:5af:186d:f947 with SMTP id
 h2-20020a056830034200b005af186df947mr10001591ote.94.1646074921110; Mon, 28
 Feb 2022 11:02:01 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
In-Reply-To: <CAFkjPTnRZdciUx7-woy2vFTx+2AnCnT925jUMbayG_wvsd7q9w@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Mon, 28 Feb 2022 11:01:49 -0800
Message-ID: <CAP6exYKWNY+rmZVPs8LoyeabD9oXOQScSftcuNcFK3Th1=F5Sw@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  eric, what do you mean by a client? A user or a program or
 a computer or just the FID from a Tmount? in any event, I think the fence
 logic should be in the client and for sure should not require any change
 to servers. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nOlHb-00088c-1v
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

eric, what do you mean by a client? A user or a program or a computer
or just the FID from a Tmount?

in any event, I think the fence logic should be in the client and for
sure should not require any change to servers.

i.e., servers would not be responsible for serializing on the FID,
just the client.

ron

On Mon, Feb 28, 2022 at 10:55 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> For Treads, even if folks use them for special things there's nothing to say we couldn't restrict the new "fast" semantics to a specific version of the protocol or certain options.  This was implicit with the cache options (they wouldn't work with devices either).
>
> For fences, are you only considering a single client? That simplifies many things -- and I guess that's why you are saying you can do it all on the client.
>
>       -eric
>
>
>
>
> On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:
>>
>> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
>>
>> > Forgive the naive question, but would this change entail that a
>> > client may not observe its own writes? (Because the client may send
>> > Twrite and Tread but the Tread may be served first, I mean.) Isn't that
>> > undesirable? What do other file systems do?
>>
>> I have thought about this, and think we can resolve it on the client
>> side with some rules.
>>
>> Treads are considered to be independent of each other and idempotent (NFS rules)
>> - This will break for things like mice, sockets, etc. Do we care? Do
>> people on LInux use
>> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
>>
>> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
>> blocks on pending reads, and
>> new reads block on the Twrite to finish.
>>
>> Tclunk acs like a fence for all pending IO. If there are Twrites, it
>> blocks on them, else
>> it blocks on pending reads.
>>
>>  Note that: this is all client logic. It is probably logic I will be
>> testing in Plan 9 in the next few months.
>>
>> A few other notes from a lot of years snooping Plan 9.
>>
>> The first thing everyone does to try to fix 9p slowness is "grow the
>> MSIZE." This can help, but it can hurt.
>>
>> It can help, in that, basically, for an msize like even 8K, you can
>> read the entire file in one go.
>>
>> It can hurt, in that, for really big files, with a big delay-bandwidth
>> product, you're going to get head-of-line blocking:
>> each Tread will wait on that "really big Tread" before it to finish,
>> so your time between Treads will be LARGER.
>>
>> The other issue with big MSIZE is that it also limits concurrency over
>> multiple FIDs, for the same reason: the connection
>> is not usable for blocks of time as it is moving 1M blocks for one FID.
>>
>>  Big block size is an obvious fix with subtle negative impacts.
>>
>> All this I've seen in the wild, on big machines.
>>
>> Anyway, I will try the caching stuff, sounds very interesting, and see
>> how it impacts my  cpu (github.com/u-root/cpu) command;
>> 9p performance is critical to that command.
>>
>> Thanks again for the work!
>>
>> ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
