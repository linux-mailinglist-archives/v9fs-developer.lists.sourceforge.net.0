Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 780D3683824
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 Jan 2023 21:58:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pMxiM-0005IC-QP;
	Tue, 31 Jan 2023 20:58:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pMxiL-0005I6-Qd
 for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 20:58:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FxL0MyWUdTgzzxnm0aOB9Z1svOz8UbqAtxusHnTnjGI=; b=QLulhTD+5IZnHPCc5twBgo7VG0
 XUY84ppPjpELOO9MEuwL7i/sxrxvVQrn5VCvtghZ89kX6TZlcLjrcJipzdBcOR+zDgOjtrq4e32av
 urDqSkVg9CEUeHecw76wT2cY8qRtM5FQZFgn5/ekMgyEUZZWAnOFxuHo/y0Z1ESltQss=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FxL0MyWUdTgzzxnm0aOB9Z1svOz8UbqAtxusHnTnjGI=; b=NX62meOVnxSwEjjmk8f2tIElzO
 YBKuOmFnio1HtnQYwLvyC0sNkHi1c8meSZqa6P/RebQsmaHjW5SWgYycywkW7dgubsV1IBwep7Tap
 /QY8x65w5y1wgkNuyKLaKV8LglVk9DXbq3mPVRYTBOKO+2rO9bOF773Awn2A9FkbqO0s=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pMxiH-0060z5-9j for v9fs-developer@lists.sourceforge.net;
 Tue, 31 Jan 2023 20:58:49 +0000
Received: by mail-wm1-f49.google.com with SMTP id
 m5-20020a05600c4f4500b003db03b2559eso11609579wmq.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 31 Jan 2023 12:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FxL0MyWUdTgzzxnm0aOB9Z1svOz8UbqAtxusHnTnjGI=;
 b=FkiA1b8svwTW7Wxah6fwPXhSU78FCK9EOZHNJLd4vrhkgjwHqx7rqWqL/Poanw4YV3
 0sRcK80DKkgXyXllV3qLLFz8RG4+e0etiO3bARrDIGrqAryZhpSY6nLUH2MCjW2iu/wx
 AA2qD/iGfGI0qvIrKS1+Woco5oh5Dq/FRLZZtJx9A/WQev6596+zZtHS02b5oCFhAqdK
 pJbDvshU2Z8tZwfdaxdJ8NxftMEAApUgu5sz2yV/irziEwXJmrFNRJlQrul80qf3YvFQ
 TB27EdDD9ef2zx4SKbrM+l1lHn/ms+W+MQBfGbq1zf53uy94mXTwwLIYX0hJ3lXjtXfo
 CTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FxL0MyWUdTgzzxnm0aOB9Z1svOz8UbqAtxusHnTnjGI=;
 b=JZe6ny7b7xvW8ykFrf/sR5ah4S8/70Zb+uN/TxdBt3/ZqwRg0uB526QIffyq2ZUvBN
 /sKVX8wf76y8SXhdySg/FpNG/V4+LMaFqzdNLG7oPHFlw1G37G+ECucs+YBNCZSjLm2e
 ngvEPJLI/+rfXF0vE733Ef8RkfTC7XKyDfqnUMkpjoFYWRRXzs4f1lcljzLhF0OZivJA
 P0xioeusz190MmEkB+YIbiJoenBNSNOHLx11P7WdQknEFyIKuiDyUlUaXkRYIEXn0e5T
 0uhoT8ewnxcOdZVZEbYNBFok3MTAzvoGHGGhyzUUTIlvhT+6/9VTLIfy4s78BPxvLBXD
 rt5g==
X-Gm-Message-State: AFqh2kpiOeaH59KLrTCFH3eDBgu+8fhE6fuuM/DY/6oFdjHoz2SaZN6I
 AyvvGbLWmijQkFnda2cbUjfpE532eoeFU/erwgZH62c0MiI=
X-Google-Smtp-Source: AMrXdXsTtx4eGShEegKgQwx4LJq05TtyqlfxWj0tSuHjHAyeOY/cZJPEUr2lNgeGWIW/qVwu3aEnCV83IFxfghNZy8g=
X-Received: by 2002:a05:600c:1c02:b0:3d7:8c6:a8cb with SMTP id
 j2-20020a05600c1c0200b003d708c6a8cbmr3547477wms.82.1675198718373; Tue, 31 Jan
 2023 12:58:38 -0800 (PST)
MIME-Version: 1.0
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
 <CAFkjPTm3xbUpVJG=LLfxH4jMMdbg-5jHYtJtv23UC6karBTL=g@mail.gmail.com>
 <39887083.4hhy85Dpq7@silver>
In-Reply-To: <39887083.4hhy85Dpq7@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Tue, 31 Jan 2023 14:58:26 -0600
Message-ID: <CAFkjPTkLM0JCi5ssHHAZwD=8oM7UhKxjy+=MQNtsKX_Z30E6cA@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Okay, I've been building up a Docker image and some scripts
 to essentially automate my by-hand testing. Should have these worked out
 over the next week and then I'll point at them from this thread if [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pMxiH-0060z5-9j
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Okay, I've been building up a Docker image and some scripts to
essentially automate my by-hand testing.  Should have these worked out
over the next week and then I'll point at them from this thread if
folks want to give feedback.  I'm not certain they'll really be of
more general use, but it might be a foundation for broader testing and
I imagine you could fix the kernel version if you wanted to test
differences in the server/qemu.

          -eric

On Tue, Jan 31, 2023 at 1:49 PM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Monday, January 30, 2023 6:39:25 PM CET Eric Van Hensbergen wrote:
> > Christian (and others),
> >
> > I'm looking at revamping my automated regression tests (and maybe
> > embedding them in github actions, but starting local) for 9p.  Right
> > now I'm looking at the diod tests as they seem to be the most
> > comprehensive tests for 9P2000.L, ultimately I'm gonna see about
> > trying to incorporate a minimal set for 9p2000 and 9p2000.u as well.
>
> Nice!
>
> I try to test your current kernel patches in few days.
>
> > Do you know if there are pre-existing regression tests for 9p in qemu
> > that I should try and leverage as part of this?
>
> There are tests on QEMU side:
> https://wiki.qemu.org/Documentation/9p#Test_Cases
>
> However those are probably not very useful for what you are doing, as these
> tests are written to run without any guest by using its own lite-weight 9p
> client. So these are more meant to work on 9p server issues by taking out
> guest OS and guest client out of the equation.
>
> I mean if you want to add some tests that would run with a Linux guest, sure,
> but it will probably be some work to do.
>
> >       -eric
> >
> > On Mon, Jan 23, 2023 at 11:36 AM Christian Schoenebeck
> > <linux_oss@crudebyte.com> wrote:
> > >
> > > On Monday, December 19, 2022 12:22:07 AM CET Eric Van Hensbergen wrote:
> > > > This is the second version of a patch series which adds a number
> > > > of features to improve read/write performance in the 9p filesystem.
> > > > Mostly it focuses on fixing caching to help utilize the recently
> > > > increased MSIZE limits and also fixes some problematic behavior
> > > > within the writeback code.
> > > >
> > > > Altogether, these show roughly 10x speed increases on simple
> > > > file transfers.  Future patch sets will improve cache consistency
> > > > and directory caching.
> > > >
> > > > These patches are also available on github:
> > > > https://github.com/v9fs/linux/tree/ericvh/9p-next
> > > >
> > > > Tested against qemu, cpu, and diod with fsx, dbench, and some
> > > > simple benchmarks.
> > > >
> > > > Signed-off-by: Eric Van Hensbergen <evanhensbergen@icloud.com>
> > >
> > > Hi Eric,
> > >
> > > what's your plan on this series? I just had a look at your github repo and saw
> > > there is a lot of stuff marked as WIP.
> > >
> > > Best regards,
> > > Christian Schoenebeck
> > >
> > >
> >
>
>
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
