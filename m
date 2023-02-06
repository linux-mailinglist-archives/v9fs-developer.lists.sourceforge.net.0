Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C166068BE11
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 14:24:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP1Tq-0000Yv-70;
	Mon, 06 Feb 2023 13:24:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pP1Tm-0000Yo-0O
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fe4ZpWP3M41TkLmkySsFaYZazKI65IaWQo/JAv4+eHE=; b=Kwe6pAFhQcHq2XB2ZpKoIDT6/y
 l7JRAz5e5rkH8no9cGsTweLPtU6IBuQ2q2WLzfgW44gSeJcZzT4Xmv4y4BVzNksE//mUrPJcDhJNM
 bxlLGxoYc4AS7gbxuuYJQobl0rSfllmo+1630TBQ1OvF0s4HpWrIway9YoxhAy41RBEk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fe4ZpWP3M41TkLmkySsFaYZazKI65IaWQo/JAv4+eHE=; b=ZY5cZzhe9tkN578ktrOPHe2skr
 Xinulsy7Wl508YGwW0j93aoHmOGp1tp6BupWOA5aqK90oiTRcjdPwDoqCJOTfocyRq2uz4gn7tQW6
 pLXrkSIbHwWqN6TOCmfgk+C362LIvBFg+ptUvfZJ5NGGN2QAlZhBU0Ku/D0lr3D8V8VQ=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP1Tj-00Ca2J-Dt for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:24:17 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 j32-20020a05600c1c2000b003dc4fd6e61dso10748749wms.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 05:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fe4ZpWP3M41TkLmkySsFaYZazKI65IaWQo/JAv4+eHE=;
 b=WV/2pTePlkxQh9rO6HflR5NPaqJ5Fu0LxT6locukbLUyCFJ58QkovJ/g2cAcq8H66i
 jEE0u4mnIE2bh3eXApXhNSurbLHHoFIWH2J1TOY1Gz9QuAdeE9O/KWSjW+CSTwM+WwA4
 IcPdv56YTjayIBK17mBiGxmzKNnwLOW8cuw94zZ4L03t+MdytogFv1XuocseNY8f/0aD
 yCBed7rs5Fx8e7ADefbRgqagTsbQRQ/QyzPpW/pxcW3sL1o3agsUTO4jKcQmEITW8Flb
 1BYAVnDsJLqGp5eMCsykp6NfV1DH5sW47OjrYkhlngfYXnQ++5wE3Kqr06mThMo2kvPd
 47Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fe4ZpWP3M41TkLmkySsFaYZazKI65IaWQo/JAv4+eHE=;
 b=NCC9oO9SvzLNG0liYO0uSgMDSrzO4R/eSlklEI/ek/6VMDscEffEGAqv33Sb2X3YP7
 IAERTRQAl8FmhWY++3jrs2BMyCk+eEVM7eaPknrF8V5bn+KS73cPayYD5ps/RiG6tK9z
 XkbT50Rj7uyPbmmaHBEzRMtvtXII+1ko/9aTJjnSs3i8JvfJgrljmXBRqEzfy6zB8MF+
 0onn3wTU7/irPpoWlQzVNR9JBn9TU/4oRoeFGGqveXczyjDxyKVhy4SFgVu77KvQ16ap
 4X765ad2G+33DjOHj3FE+/iZwcsjnCTYo7AKC/UYrJuNRUEBfMzPeHEAI6tTPjR7m6h0
 uTnA==
X-Gm-Message-State: AO0yUKVdJ2lVQtQR1uil6D707NeknSt8kbXWxuHpnVI3d3/ViOrGFWAi
 HwJE8JAKTg+5Jw6yODEg+xgjt1WrKt20Aagz66s=
X-Google-Smtp-Source: AK7set+fpoyWUkVoXQsqyWAJ9gujOdYn8doJkjCSZcNyd+IA/hSR+lOlyICI+uTJJOQY91YuHTE0UVhqY9SZLfIzKGU=
X-Received: by 2002:a1c:e909:0:b0:3d1:e3ba:3bb6 with SMTP id
 q9-20020a1ce909000000b003d1e3ba3bb6mr1013155wmc.29.1675689848737; Mon, 06 Feb
 2023 05:24:08 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <2302787.WOG5zRkYfl@silver>
 <CAFkjPTkc-f11p-+ZCV-wRtpT5SbyYBodAzbEHciTRH5CY1br9A@mail.gmail.com>
 <9010570.AfT4dvHSuA@silver>
In-Reply-To: <9010570.AfT4dvHSuA@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 6 Feb 2023 07:23:57 -0600
Message-ID: <CAFkjPTkcGC_eBp8Db2b48rtbFads+2KGkD1DZRL=C6k-4uX0oA@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 6, 2023 at 7:04 AM Christian Schoenebeck wrote:
 > > > The particular call path you ran into though may be fixed in a > >
 different way -- so calls to setattr trigger a flush of the write [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP1Tj-00Ca2J-Dt
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Feb 6, 2023 at 7:04 AM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> > The particular call path you ran into though may be fixed in a
> > different way -- so calls to setattr trigger a flush of the writeback
> > buffer -- this happens regardless of whether we are working on an open
> > file or not.  Might be easy enough to prevent flushing if the file
> > isn't currently open (because there should be nothing to flush) -- but
> > I had a second question: why are we flushing in the first place, this
> > seems to be traced back 12 years to a commit from Aneesh where he is
> > concerned that if we change the mode or ownership of the file then we
> > won't be able to writeback, but that shouldn't be a concern because if
> > someone has the file open under the original permissions then they
> > should be able to write regardless of someone changing permissions
> > underneath them.
>
> I can't say for sure what the motivation was, as not being involved on the
> party back then, but keep in mind that Linux client currently collects a
> constantly growing amount of open FIDs indefinitely, and at a certain point
> e.g. QEMU is forced to close some open FIDs to prevent a crash, which QEMU re-
> opens later on when those FIDs are accessed by client again.
>

Indeed - the fact that there are double the number of fids to
accommodate the "extra" writeback_fid was one of the motivations for
trying to remove it.  The flush here doesn't really help with that as
the fid held on to for writeback as well as the fid held on to for the
cached dir_entry will still be held regardless.  The second held fid
won't actually get dealt with until I finish the patch series with the
multiple WIP patches...but will get back to working on that once we
are done with this.

On a secondary note, I was mostly trying to reproduce your problems on
my M1 mac (w/ qemu running native on the M1) -- the open FID problem
happens MUCH, MUCH sooner.  I think by default you only get 256 open
files on OSX.  dbench with 8 threads always triggers handle failures -
so we may need to adjust any constants for fid reclaiming on qemu when
running on mac.

      -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
