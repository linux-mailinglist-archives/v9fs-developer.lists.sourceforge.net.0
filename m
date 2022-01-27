Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5284749D8C6
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:05:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCv6Z-00047w-Bp; Thu, 27 Jan 2022 03:05:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nCv6Y-00047q-MZ
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bbmfxiFxmrCa6B4/yxnlPoXEXsR7oB7TPsHOXhXz9is=; b=AJrU3tM/clFF9r0fB2wprhytO
 zHeBgfpvxdj/3HqFmmRxQXcywQEmJUwfLGRgGLaaNBsJlBq1re1zKgPbRLNnwKF5ma6VsvZ23WudG
 KDccI3gdHm8KXq1VQwRS9N3YQMOV4k03MMSXoN1K1X6hE72bnlB9C1wc3Ol+e89yHtM+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bbmfxiFxmrCa6B4/yxnlPoXEXsR7oB7TPsHOXhXz9is=; b=fFhptV3bZlfnDcEGa3ppiPdi5S
 Num2AX1z+WHGhLbNUUyZhuqBlJ1N3+QLT3d+fOMoDSd0cLEXAyobtsZD/8rp9REUioQQTZI4v6njp
 Ct78yZkrlWC1Oh4++7LGAXJunCNkQJiTZSBv8Y+InDf6ZJJVtRS597JhL1nyDo84QGxA=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCv6W-00FUUm-H6
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:05:45 +0000
Received: by mail-oi1-f172.google.com with SMTP id q186so3401326oih.8
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Jan 2022 19:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=bbmfxiFxmrCa6B4/yxnlPoXEXsR7oB7TPsHOXhXz9is=;
 b=W5UzRlgYcogjR0I5WN4D/pTe1fczBPWMJK+U3t6O34c5Mbk/bwXr9kAk2hnR4Ela4r
 GH5hl949UE2f3Wf7Hp3SV/niPnh+wp6ZkDLB2AcUUv0Wb8UIX+1mlEDckFzMfY0ssnqI
 9gUddSsFo7v+5xLCFm9EM9LtvajT/TZnvvdYQjl9lhWXD9+cPd864ux/pJG1Ihz/8TVT
 XwTrcRPpXQh+0/IP3D7nhessJrCJK5IjT4fQJ2rPnydKu8sILaljlFB/+frUPFtWU0Dh
 xJ9IYj84oo3HB+ogXhg7ZOoiwOe7NJH+ME1LAWe/jzwcxQg+Ow8x1NmZ5p94ij5KD4+P
 4h/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=bbmfxiFxmrCa6B4/yxnlPoXEXsR7oB7TPsHOXhXz9is=;
 b=0qbdS0B8l5KZA1OWVDWaZIPFpVSgNrLFm8ojxtSwSqRgrTnBQMBd1L4tXAOmomQSrc
 WYK6gtULVfNY4fXjidxBGj6LcYjhhjxKKnEMGSWlt+aCjPeJzyaXHzAw866m60moxrhb
 dLqJYfEri+OdXHNtvhmwiFnBDaHdWPKcjjCWmFarqZkHy0ebkc3qEc1tCgtWaMHipkEI
 3jxIoGOHaC0Tqo13VBPai/0xc4yisbKG6vmiizeCxzyXAs8DBfAz/2kuOzpIL2sEUxtA
 2BLgStRMFwcbiHdPaq+dLgleo6vdS+wfXfhrn+A7pCkDPgg76drBSqfBhs18O1lIUl3W
 n6Yg==
X-Gm-Message-State: AOAM531LElRnGZm5Ed2u/NjtIsCyD8U0RnhuYsV6iAmuCp7sippCxH4E
 q3ILELpbNtP/NBT0THev4n/99HBzTLM5heFKOPFpTYSWmA/vvA==
X-Google-Smtp-Source: ABdhPJwyPKUA92HeSKymhY5NDb+tj3XwRhGhIk42ZPhL5eWLeweziqIApYl2XpogoIwmjJaLwv0QNTkG96O+aYXaJ8s=
X-Received: by 2002:a05:6808:2388:: with SMTP id
 bp8mr5692286oib.327.1643252738855; 
 Wed, 26 Jan 2022 19:05:38 -0800 (PST)
MIME-Version: 1.0
References: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
In-Reply-To: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Wed, 26 Jan 2022 19:05:27 -0800
Message-ID: <CAP6exYLKQ2N_ke2Cj5T0q=F+htTd8nP_Zaygo1sRTcXohNhS8Q@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, 
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Sorry, forgot to mention,
 you can find the server here: https://github.com/hugelgupf/p9
 it's used in google's gvisor, heavily, which I just realized makes this a
 bit more urgent. I will be very happy to find out this is some mistake I'm
 making! Thanks! 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
X-Headers-End: 1nCv6W-00FUUm-H6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sorry, forgot to mention, you can find the server here:
https://github.com/hugelgupf/p9

it's used in google's gvisor, heavily, which I just realized makes
this a bit more urgent. I will be very happy to find out this is some
mistake I'm making!
Thanks!

On Wed, Jan 26, 2022 at 7:01 PM ron minnich <rminnich@gmail.com> wrote:
>
> commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c (HEAD, refs/bisect/new)
> Author: Greg Kurz <groug@kaod.org>
> Date:   Wed Sep 23 22:11:45 2020 +0800
>
> Greetings, I'm the original author and one of the former maintainers of 9pfs.
>
> I've discovered that all kernels past the commit referenced above
> break the following simple program:
> int fd3 = open(argv[1], O_RDONLY , 0);
> if (fd3 < 0) perror("non cloexec open ");
> int fd4 = open(argv[1], O_RDONLY , 0);
> if (fd4 < 0) perror("2nd non cloexec open ");
> int fd = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> if (fd < 0) perror("first open");
> int fd2 = open(argv[1], O_RDONLY | O_CLOEXEC, 0);
> if (fd2 < 0) perror("second open");
> printf("%d %d %d %d\n", fd3, fd4, fd, fd2);
>
> The output:
> 2nd non cloexec open : Device or resource busy
> first open: Device or resource busy
> second open: Device or resource busy
> 3 -1 -1 -1
>
> As a result, programs can not open a file that's already open. This breaks an
> absolutely incredible number of things, as you might expect.
>
> This causes real trouble for us at Google, as we are using the cpu
> command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.
>
> Any thoughts on what we might be able to do to get things back?
>
> If you need more tracing, 9p traces, whatever, just let me know.
>
> Many thanks!
>
> kernel protocol trace available at https://pastebin.com/w9Ke0mRm, the
> thing to look for is the open of x.c, I can get more info as needed.
>
> ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
