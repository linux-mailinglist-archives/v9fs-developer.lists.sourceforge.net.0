Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DDB49D973
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:40:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCveT-0003jL-OD; Thu, 27 Jan 2022 03:40:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1nCveS-0003jF-Bl
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=721oZoSPTdPuBSI0VU6esSxQLUTk7jb74tm+N/IehrY=; b=mSDKZbxblW7VXQm78avmYXCwSw
 HpOnbA6CH1FN6ulPX0zfOAMFcVzZbbdc5TjhBN9Edy40TBrafacQmpp/1Gq2QK5uuFaaXUahWhwmK
 w8u7tZNt/I99Ri79jo6cBVI0OxTGbfEAmdr8o21135/Szyc+St0LSZN4I9U2zJEgsJPw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=721oZoSPTdPuBSI0VU6esSxQLUTk7jb74tm+N/IehrY=; b=Bg1Y4UNiyFwM2AGfiYPqzxxYDG
 CyRY598mOZJp1zpJc/pXrrSp0EnR8dq2ktZ+Yc71wCQnGseHPG+r7/d/ImyeeulN6A5MA++IpwV9H
 gJvo7ijwHEEBrHOcFOjH50A6JyogE+MznyfLFIwY0LDl/wbeqCA1JGCZxDlMRwYnikQ4=;
Received: from mail-ua1-f51.google.com ([209.85.222.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCveN-00FX4Q-1I
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:40:46 +0000
Received: by mail-ua1-f51.google.com with SMTP id f24so2353778uab.11
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Jan 2022 19:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=721oZoSPTdPuBSI0VU6esSxQLUTk7jb74tm+N/IehrY=;
 b=WgcqVB3WK01dbwx+z0F2wsYLkLXj+nn3o3uO4IalkKe+IkxTVQx0h6ECSKBF73kGTn
 iVeI+fZdtHeiTOsK3pa0dSCkZqcmu8uAAST4YTHQwZFhskVGhiNR1iFhRzwvXNP8tCVJ
 YQMr/PS7ucsZl1LKJXS3I/wri/919fi0G00k/jxOJ27dtiux2X28VMNBvJtCVbESvztt
 U6dB4yxT9EExn2ETrh86tz4gx5Y59//s2FcKjGIHU6n1XKS10lu3ZSrv11jEurlQW8kt
 O+CGHsfpLkjgVaUaD97GWxDZ2xpuR+HQOcN/fKq//aaanI9DeyqferyjO5OFLaeMeHjS
 gEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=721oZoSPTdPuBSI0VU6esSxQLUTk7jb74tm+N/IehrY=;
 b=aqtbbyhSQVfVWWsAHTlKy4oBfTtiJogPVOsU1V7MpSXgNG9FlWU5zUiMWVFoXwu3xj
 4ziEjPWSOKYSvH8lctD+soMiJGAdTB17kCK2ZHD3cORW3plJsfx9HQfqW4ixCwE0zeOA
 thDWsvvrw5kDBovSsNtDC1X8fxzfjlI9RY1ssq3Ie5FIkc+NUOz2PyVC8ufwKVVfK5Dc
 z+/9/I+mUctS+dY5a0qBa+yeC5EtEJAD/d/KiOcfyQUl16YM7bmMmAsG2W8DscUcHSAQ
 6p1PKW+PlomQghTl2eaqoXJ5IR8WFEy3MFRBVgRP1BwsDHEoMgHyNoR7LsqaDohyGvcu
 Q/NA==
X-Gm-Message-State: AOAM530nLZ+DUnnQ85R2+IwyiRnRpENw10nlxmEm1ctfsH9lcw93v6Lh
 GgCE8/azeYCGDABWrUuEMwLQHnGqs163fnuZPNUa9Uf9
X-Google-Smtp-Source: ABdhPJyA/9nLkWeWd3S4S6fgimxcx88WOpcTWJmccpPK2rm8UHKy9DKGBvwlAcqAgaddFBavQggv6SnjL+tkMoYl3BQ=
X-Received: by 2002:a67:a249:: with SMTP id t9mr808649vsh.63.1643254836799;
 Wed, 26 Jan 2022 19:40:36 -0800 (PST)
MIME-Version: 1.0
References: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
 <YfIP9GQohscGomgX@codewreck.org>
In-Reply-To: <YfIP9GQohscGomgX@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Wed, 26 Jan 2022 21:40:24 -0600
Message-ID: <CAFkjPTne8PxxAd=gQ-LYYkRmwz+uhbqYtNzZiTkvL8ANHyZMbA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I was looking at this earlier, and I couldn't remember under
 what conditions that fid mixing would even happen. IIRC, we always clone
 before an open, so I'm not sure when we do a second open on an alr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.51 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.51 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nCveN-00FX4Q-1I
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] 9p was broken by
 478ba09edc1f2f2ee27180a06150cb2d1a686f9c
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, ron minnich <rminnich@gmail.com>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I was looking at this earlier, and I couldn't remember under what
conditions that fid mixing would even happen.  IIRC, we always clone before
an open, so I'm not sure when we do a second open on an already open fid
--- perhaps a dup?

      -eric


On Wed, Jan 26, 2022 at 9:22 PM Dominique Martinet <asmadeus@codewreck.org>
wrote:

> Hi,
>
> ron minnich wrote on Wed, Jan 26, 2022 at 07:01:37PM -0800:
> > I've discovered that all kernels past the commit referenced above
> > break the following simple program:
> > int fd3 = open(argv[1], O_RDONLY , 0);
> > if (fd3 < 0) perror("non cloexec open ");
> > int fd4 = open(argv[1], O_RDONLY , 0);
> > if (fd4 < 0) perror("2nd non cloexec open ");
> > int fd = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> > if (fd < 0) perror("first open");
> > int fd2 = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> > if (fd2 < 0) perror("second open");
> > printf("%d %d %d %d\n", fd3, fd4, fd, fd2);
> >
> > The output:
> > 2nd non cloexec open : Device or resource busy
> > first open: Device or resource busy
> > second open: Device or resource busy
> > 3 -1 -1 -1
>
> ugh.
>
> > As a result, programs can not open a file that's already open. This
> breaks an
> > absolutely incredible number of things, as you might expect.
>
> Yes, I'm surprised none of my tests exercise that...
> *tests*
> Ah, it depends on the server.
> Ok, this is probably the same as this:
> https://marc.info/?l=v9fs-developer&m=164182707911101&w=2
>
> > This causes real trouble for us at Google, as we are using the cpu
> > command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.
> >
> > Any thoughts on what we might be able to do to get things back?
>
> Yes, we "just" need to not mix fids obtained from open/create with other
> fids.
> In the other thread I had suggested just adding a flag to the search
> function to separate the fids, my first idea was just to not index the
> opened/created fids but we need them around in some cases. It's really
> unfortunate that no-one who worked on this patch series were aware of
> this part of the specification, the check in the go9p server looks quite
> artificial to me... But anyway I'm just rambling, we need to fix this.
>
>
> For now if reverting that patch works for you it might be the
> simplest way forward.
> It's also possible to make the server more tolerant as a workaround:
> https://marc.info/?l=v9fs-developer&m=164189977224789&w=2
>
>
> I'll try to find some time this weekend to send a proper fix, as it
> looks like it's impacting more people than I thought.
>
>
> Thanks,
> --
> Dominique
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
