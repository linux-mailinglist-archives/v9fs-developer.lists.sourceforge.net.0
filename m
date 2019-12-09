Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E953C116E5F
	for <lists+v9fs-developer@lfdr.de>; Mon,  9 Dec 2019 14:59:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ieJZt-00009M-3u; Mon, 09 Dec 2019 13:59:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tomasbortoli@gmail.com>) id 1ieJZs-00009E-HR
 for v9fs-developer@lists.sourceforge.net; Mon, 09 Dec 2019 13:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fKKGG4Zp3ALBeLir8ongWG1tKAkUCC4Edt9AByG3O7Q=; b=AOouyqncVabCoH9ldT37YXJV1P
 pb8BMVkCVj6+sFAqyfYWeqJAVAoOHp2XYd+miJFpjNWL2Pc0Luu+hUwtJ2WGhwFchXjapbJ5SEvPg
 K4vdSKCzCDIS4UKe/xAzyCjhUXlnWUU0A52MC0GYEzp1k7V5kyE0IqHAtiCRzqfTBEdU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fKKGG4Zp3ALBeLir8ongWG1tKAkUCC4Edt9AByG3O7Q=; b=B7zVfkn3HBmVy9fzH+L/VwAOB3
 G8Ad+5QKV6N29hXpNfVVPiQRWvD6tln0WYWh3XuRC1pg2s+MNX/Z4/jutKp/OmUmSScuhBe6l4yNs
 3KFITc9L2OKIaxfJxwv7vUZCy7+54zPawAvVAiNvpEHcXmhVnZVqgXhpjX7PN/vr620c=;
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ieJZr-00FhQw-28
 for v9fs-developer@lists.sourceforge.net; Mon, 09 Dec 2019 13:59:56 +0000
Received: by mail-vs1-f65.google.com with SMTP id p6so10279923vsj.11
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 09 Dec 2019 05:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fKKGG4Zp3ALBeLir8ongWG1tKAkUCC4Edt9AByG3O7Q=;
 b=XKrW/jVVJTVefvZQL7Ckeqr3ZcqUeENHa02DfFJ67SgqQAlmdS7uEtpIjCeEiWmjAU
 5Lev1jFDipPkac1eB5yemcAKulZ/qbAejfKszcTUJoR47Kx+ortvc+anDDJXv4+c/Kqg
 /XERvfKoH3fdkJjhKo1dKLavDXXSSwf8jZJTq7RR+NEvDCbFRZ+TCD2kYP9RLBpFO1jo
 2nK6+hgZ8zYmulLaz+hsoIARVdnP5QEaq/j1omL5ztO3J6/fg7MA+DDEjllS3g+VmDDI
 CZq3KlLVE82pVYin/9iB3gQRnlYVrUYEKSveuwcMzj49g1gbNTdNHiYlhCATfshQWk6r
 EMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fKKGG4Zp3ALBeLir8ongWG1tKAkUCC4Edt9AByG3O7Q=;
 b=BxL2wHAWEwxQGMY/WipG+bExjFKVYmpBveo6RCRz46PMqJ/fxdIgXEK8i60Xy9Vzd2
 B/ZIi5AdgGDM2SstWFfpG+HmqA5GnMH3bKJRtYg6vDsl08o0FP+s10lYnuBe3wdI+uxs
 g+/ufmlcUD2JiIc5mwjWi7Ma26JL7isAwRTwMlD/rQ9HJHo0PRB+cKanQkRtEtw/n/7/
 +Gz0pvzSngB7PEvUR9FloF/FZVY8nRr5XEoCoDgJo0syu0Aei/mgEWa4tuiIXe/WGivD
 5g6TsTM31IuV0KQxx2qY3iluvKmN+/y4qvSTue7edx29J2P/vXxauh+FiR5LhqTNPMPX
 m7aQ==
X-Gm-Message-State: APjAAAXsNfIOFF7xAqyJzvasKmjsU/OTgydNJor575wLbE8/PZCN5ec0
 HvCQHmTr/fmYxNZXXkFPDdl9PA509xNhvXA62+s=
X-Google-Smtp-Source: APXvYqwOjY0xfJdG/Du2L1dAYePJ5z3rh/GlixSvQhuYB3BlKmeOCd5rkGO9WI7ZM+4vQILhmE6IIMTYicN2YLd4uo4=
X-Received: by 2002:a05:6102:21d8:: with SMTP id
 r24mr21229118vsg.83.1575899989017; 
 Mon, 09 Dec 2019 05:59:49 -0800 (PST)
MIME-Version: 1.0
References: <000000000000f665a30570885589@google.com>
 <000000000000de09e70599226583@google.com>
In-Reply-To: <000000000000de09e70599226583@google.com>
From: Tomas Bortoli <tomasbortoli@gmail.com>
Date: Mon, 9 Dec 2019 14:59:38 +0100
Message-ID: <CAAHj5qgL913_cN9e3eEhsazCTYFRBC-hDAEM=SBpby+2Ffo+qw@mail.gmail.com>
To: syzbot <syzbot+1c9db6a163a4000d0765@syzkaller.appspotmail.com>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tomasbortoli[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.65 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ieJZr-00FhQw-28
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] KASAN: use-after-free Read in __queue_work (2)
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
 Dominique Martinet <dominique.martinet@cea.fr>,
 Eric Van Hensbergen <ericvh@gmail.com>, netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
 v9fs-developer@lists.sourceforge.net, jiangyiwen@huwei.com,
 Ron Minnich <rminnich@sandia.gov>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

#syz fix: net/9p/trans_fd.c: fix race-condition by flushing workqueue
before the kfree()


Il giorno sab 7 dic 2019 alle ore 20:45 syzbot <
syzbot+1c9db6a163a4000d0765@syzkaller.appspotmail.com> ha scritto:

> syzbot suspects this bug was fixed by commit:
>
> commit 430ac66eb4c5b5c4eb846b78ebf65747510b30f1
> Author: Tomas Bortoli <tomasbortoli@gmail.com>
> Date:   Fri Jul 20 09:27:30 2018 +0000
>
>      net/9p/trans_fd.c: fix race-condition by flushing workqueue before
> the
> kfree()
>
> bisection log:
> https://syzkaller.appspot.com/x/bisect.txt?x=15661282e00000
> start commit:   ca04b3cc Merge tag 'armsoc-fixes' of git://git.kernel.org/
> ..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=2ca6c7a31d407f86
> dashboard link:
> https://syzkaller.appspot.com/bug?extid=1c9db6a163a4000d0765
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1473a452400000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14087748400000
>
> If the result looks correct, please mark the bug fixed by replying with:
>
> #syz fix: net/9p/trans_fd.c: fix race-condition by flushing workqueue
> before the kfree()
>
> For information about bisection process see:
> https://goo.gl/tpsmEJ#bisection
>

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
