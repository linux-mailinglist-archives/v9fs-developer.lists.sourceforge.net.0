Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45738694588
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 13:14:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRXig-0001jF-O9;
	Mon, 13 Feb 2023 12:14:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pRXif-0001ir-DD
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 12:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wE7elN8gKWlwdXUHUBx4/clTthhSbmUmpi6FVIkoDW4=; b=HSjadXuw8F/GJmFGw7wglh7c2I
 LTyeGt2/TYMnuwKcT3VfLLUD4znfxFj5QMK4jqBjka+NtWhtHmmQX7YzeaTywxP/icmfSyNIIfe9j
 Vf8H1rOCJXk6Fro0Q3GwZg3wDUAaPeiZMaNKmKCIGI3Mk6x4rBsmws009zuClfMkbpW4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wE7elN8gKWlwdXUHUBx4/clTthhSbmUmpi6FVIkoDW4=; b=c45Ux/F/xYB97QnpoM1heO3+XM
 dag6ocfD1YBgCqN99gpL+YHoKjMA/pYxSgPhUkIXH2k3+qlYWl7i11JKlZe8pbxPqr3KnRi7Gp8ks
 7m+05U6ElfBtCN4vpk6K7nOU3Gogy3Aa44F4eVavAOoL96227FCD2tVPoXcQmmkto3zM=;
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pRXiZ-002jtS-PG for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 12:14:04 +0000
Received: by mail-wm1-f49.google.com with SMTP id r18so8540167wmq.5
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 13 Feb 2023 04:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wE7elN8gKWlwdXUHUBx4/clTthhSbmUmpi6FVIkoDW4=;
 b=c6WrQWpuC7mx9HVhLW/QXnGJVJKobMRkZ9uTwuahaPRQyDMwvzJ4gjj8icvT3vgnKT
 312jZ4z6h3vpVh0J1D4/44bbjsCFAyk/wYq+ZqpG7dfFSrsYNSWzgDjcttL2CNTkEhIx
 oeEwq8UC7aXHhqto90//YwWFwV2agA9Kc6V+cdbBeoQwmQElNdWUhZM+SFYChaWcVKMX
 fz6u4BlioWzdv7r8dGrB6yHXifLDtWrET7F1zeSo1Q/P6/6nqXIwpVWn7Nx4hFK9pczZ
 Js5dtyaHX1nU52iOMy49fKhWXHt5XlUaEv3A5sgKEqaygv43e7Cq2khEGHHeQvA0MyzI
 OzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wE7elN8gKWlwdXUHUBx4/clTthhSbmUmpi6FVIkoDW4=;
 b=tychr+h7jmz1GY0HqNXWDUeCsAcNrMFJcQn8XiDC6pK974m+PECN5TQYjVkneidhNF
 MxpkE8jHTx/QZLZca+Tj/KdJkd3Q3LpLBqmjxv/8xKDXTN/Ao4sfpV+EHs2wzuB0/+6y
 nTuqZ+pcIw1kAMCxOFiLbxEHrn5t0wc658OMw/rf7hiyKLXJsuFe935sSve/c4NTWbP/
 G5GY6Eds6+4RqO8u0eByNo3smcEWwdO3QxMLv3Pjqn9vN7gU9gPeY746IqX8/sTiezuA
 WYHXpuyi6fntravtVwt/2txNAxo9w6TKAlTH75gcYz2cVPt1fjFLM7AQ787mt5x64hXM
 nVSQ==
X-Gm-Message-State: AO0yUKWlGhSYBdWO/GY1IGc0m4W5qFmetW/0dCuVj5FSjCL7fE5iBhEw
 oar4/G5cVZfta2SPDNC2ZNiadADa0QeKrQ9bifGBTbdo
X-Google-Smtp-Source: AK7set9aTJ6jjoOEkV5mRF6Sh6OPjQm2gpBerxU9vFA1jCNviVLCGlGIiTsTqp89ghEeOFZtN4V4F8mHCXSoURwOaqg=
X-Received: by 2002:a05:600c:2212:b0:3d1:e3ba:3bb6 with SMTP id
 z18-20020a05600c221200b003d1e3ba3bb6mr1225576wml.29.1676290433021; Mon, 13
 Feb 2023 04:13:53 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <CAFkjPTkqHs091FeePjZsPS8eNQoPY+HJiW1nS7KTDgEEue9XFQ@mail.gmail.com>
 <CAFkjPTn=6+X1=b4sfAd8LrZ2xuJF_4hsDbUmFZtifpROTTtB9g@mail.gmail.com>
 <7353605.ZQh82CZjP3@silver>
In-Reply-To: <7353605.ZQh82CZjP3@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 13 Feb 2023 06:13:42 -0600
Message-ID: <CAFkjPTmW+RHHP7sF-JjbZ-mCmCUv63NCVOU3aWOzDCezb4L0sQ@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: its available in the for-next branch on github or kernel.org.
 Want to test some more before posting V4, hopefully will get through that
 today. On Mon, Feb 13, 2023 at 2:49 AM Christian Schoenebeck < wrote: 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.49 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pRXiZ-002jtS-PG
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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
Cc: lucho@ionkov.net, rminnich@gmail.com,
 Eric Van Hensbergen <ericvh@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

its available in the for-next branch on github or kernel.org.  Want to test
some more before posting V4, hopefully will get through that today.

On Mon, Feb 13, 2023 at 2:49 AM Christian Schoenebeck <
linux_oss@crudebyte.com> wrote:

> On Monday, February 13, 2023 2:01:22 AM CET Eric Van Hensbergen wrote:
> > (sorry - changes are in the for-next branch, need to do some merging
> > into my v9fs-devel branch)
> >
> > On Sun, Feb 12, 2023 at 7:00 PM Eric Van Hensbergen <ericvh@gmail.com>
> wrote:
> > >
> > > Okay, after much thrashing about, I think I figured out what was going
> > > wrong -- seems filemap_write_and_wait didn't quite do what I thought
> > > it does when the superblock isn't marked as synchronous (which it used
> > > to be if caches weren't enabled).  In any case, I replaced the
> > > filemap_write_and_wait writeback flushes with something a bit heavier
> > > weight and it seemed to get rid of the problem for my test cases.  I
> > > will be doing some more testing, but if you get a chance see if it
> > > gets rid of your problems as well.
>
> I will definitely test it out! Are you going to post a v4? Otherwise just
> drop
> me a note once it is ready to grab from which of your repo branches.
> Thanks!
>
> Best regards,
> Christian Schoenebeck
>
>
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
