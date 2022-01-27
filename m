Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D61B49D908
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 04:13:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCvEO-00037Z-8S; Thu, 27 Jan 2022 03:13:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nCvEM-00037S-PV
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XKUl3AUrROmO6IVpaqEh7aqKx1oPAJaJ5eaHUYsL3y4=; b=cjNRmC9F4Mg4LMlouAO8ixEjU
 4EqammijuWTbjgSOwFU+d1xfb8s1Dd4mRYd5PU0PHrLiOQOgvJVySyOEgsm5kG1ZKgoeboo1E2xpc
 Cq8w3YVDV2gVvZXP0KIiNAcJqNqbxlR6au926M6tuBLUKufxH6+LLSnlgFFVB5rIl+2iE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XKUl3AUrROmO6IVpaqEh7aqKx1oPAJaJ5eaHUYsL3y4=; b=a1fHe4kxdYnPqBnQuVH/LU++VC
 PREMaaH4+aQnCZnLqHn0vPofB30+1T0P2mqdNqyGmsXn4Jc+SysoE46q6IIL+yc9uAylzcXpSD5Jc
 Rr9c9IMiOj+92xOcvCRB79o5QtRYrByomul6U6OD/ODdveuP1uFWWjVfJuI2T5DlTSKs=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1nCvEH-00018Q-GP
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 03:13:49 +0000
Received: by mail-oi1-f169.google.com with SMTP id e81so3445942oia.6
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 26 Jan 2022 19:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=XKUl3AUrROmO6IVpaqEh7aqKx1oPAJaJ5eaHUYsL3y4=;
 b=c1jF+3A84LGc8M5bW+FQ70avIF4gxwQdXZvXrr5OHFoWWeOqohceJLM3JXRnEEHaFr
 0lMuleP8Iceme1F1TbyilamZAikvJimmFvjbiFm55GCG2obM0H91Eo4ALS2Sztv+sQJ+
 fjLy/rog0ad7DiyN0HD3DPqIMYK1hlmYzc34qOy/1fkuZ2fkWafqDDooI7BlSqOV0gvt
 wTYvsf/TwS/39pJek1btr97aKWz/cdRkTISLnjfV9wf/M/EmVibZOh065QoBuod0HV2W
 NlrUeFRBp+oR8WGeUKPci1YRtHHXEYCxk3WUyc//ElEUiRmGcdJdRS3QR/NlXxCig3vS
 fy0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=XKUl3AUrROmO6IVpaqEh7aqKx1oPAJaJ5eaHUYsL3y4=;
 b=ze7Bxa3Yt+uCq9wWAswN/Ik+fYFfhfwLHsVv3HqpqNmFIILjBw00r97I5QdQGQP+1G
 gdquD91MaPEVJbKgw47x6MxGG1A3+PCMZj2BXr7vz354hwg8W3UsrdzehG2IQLECc/6M
 bPyY0/MXL7Orn//L/FBx6tsIjE6l9azAYoRq7jbBMGy5OIeIyLuGX/krTZwexcq26ySM
 MKVGVTZB6e5H70wzNVHg72PDuy3WwqahTWlQioaIu9ObOgZ9iR7z3qAMWSpJFRm7OjMi
 BQNSEktQK2KAfIo2hKVEtVsf1y16tyQMnnoJMklw3Cy6HNvVc6Jb0v4i0CEUIvMTrLeM
 u/tw==
X-Gm-Message-State: AOAM531hm7vbyrEbHoUtRkkKmtXUOUaNO+v9yDiYU3aQB8EvDgdf5hSQ
 rIqut3jYJUAvYSE49NZeiPRj4oLWGZUozrGwWW2uZOSlnQqbVw==
X-Google-Smtp-Source: ABdhPJxAkIqwa9C9sNn+413s859sSRMcAy3zxfnkAG/P+DTnGENc9mg1SWQq8dAhTnH4G4IbWYeVcywkvUYc803sbIw=
X-Received: by 2002:a05:6808:2388:: with SMTP id
 bp8mr5708958oib.327.1643253213610; 
 Wed, 26 Jan 2022 19:13:33 -0800 (PST)
MIME-Version: 1.0
References: <CAP6exYJF9iGoJrMZ=gz2ghanzfi9CqKi=TCnzD5U4SmZQW0kyQ@mail.gmail.com>
 <CAP6exYLKQ2N_ke2Cj5T0q=F+htTd8nP_Zaygo1sRTcXohNhS8Q@mail.gmail.com>
In-Reply-To: <CAP6exYLKQ2N_ke2Cj5T0q=F+htTd8nP_Zaygo1sRTcXohNhS8Q@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Wed, 26 Jan 2022 19:13:22 -0800
Message-ID: <CAP6exYLkRh1Y3ZF0pd+EMTKVbEHDsH3bbmJcBg55ZG_3zT1RHw@mail.gmail.com>
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
 Content preview: one last note: I can fix this on 5.17-rc1 as follows: commit
 8308fa3a7591311676d665daf22a87dea40fdd7f (HEAD) Author: Ronald G. Minnich
 Date: Wed Jan 26 19:06:55 2022 -0800 Revert "fs/9p: search open fids first"
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
X-Headers-End: 1nCvEH-00018Q-GP
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

one last note:

I can fix this on 5.17-rc1 as follows:
commit 8308fa3a7591311676d665daf22a87dea40fdd7f (HEAD)
Author: Ronald G. Minnich <rminnich@gmail.com>
Date:   Wed Jan 26 19:06:55 2022 -0800

    Revert "fs/9p: search open fids first"

    This reverts commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c.

Thanks again.

On Wed, Jan 26, 2022 at 7:05 PM ron minnich <rminnich@gmail.com> wrote:
>
> Sorry, forgot to mention, you can find the server here:
> https://github.com/hugelgupf/p9
>
> it's used in google's gvisor, heavily, which I just realized makes
> this a bit more urgent. I will be very happy to find out this is some
> mistake I'm making!
> Thanks!
>
> On Wed, Jan 26, 2022 at 7:01 PM ron minnich <rminnich@gmail.com> wrote:
> >
> > commit 478ba09edc1f2f2ee27180a06150cb2d1a686f9c (HEAD, refs/bisect/new)
> > Author: Greg Kurz <groug@kaod.org>
> > Date:   Wed Sep 23 22:11:45 2020 +0800
> >
> > Greetings, I'm the original author and one of the former maintainers of 9pfs.
> >
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
> >
> > As a result, programs can not open a file that's already open. This breaks an
> > absolutely incredible number of things, as you might expect.
> >
> > This causes real trouble for us at Google, as we are using the cpu
> > command from u-root: github.com/u-root/cpu, and 9pfs is load-bearing.
> >
> > Any thoughts on what we might be able to do to get things back?
> >
> > If you need more tracing, 9p traces, whatever, just let me know.
> >
> > Many thanks!
> >
> > kernel protocol trace available at https://pastebin.com/w9Ke0mRm, the
> > thing to look for is the open of x.c, I can get more info as needed.
> >
> > ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
