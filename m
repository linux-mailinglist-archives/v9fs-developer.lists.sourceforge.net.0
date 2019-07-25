Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3519675492
	for <lists+v9fs-developer@lfdr.de>; Thu, 25 Jul 2019 18:48:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hqguZ-0006nO-6y; Thu, 25 Jul 2019 16:48:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3QN05XQkbANEFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1hqguX-0006nB-TX
 for v9fs-developer@lists.sourceforge.net; Thu, 25 Jul 2019 16:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RIyoo7tX1yNs3TKOq4NKYW32kQ5qo7m0vsA24OoRalg=; b=lIwJx9/Bu1LzPLHKThwphA0aJD
 IJF6eXAg6dOOIQtwTiud5MH2RrBUIN1y7XggycL/vFmEJ4oMoZgVU9r8a4ErHxJkhqmhrdj1cmnmv
 uCqgdZ0FmYnClNqn4ie5KNXxyGa3AXpqiflZCZGEM157su/wbFX46Cp3awqXoD7hbuAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RIyoo7tX1yNs3TKOq4NKYW32kQ5qo7m0vsA24OoRalg=; b=R
 Nq+/IsN+0ZvlWaP6+P0RC9VQ0+c91uOltSHU9IAIIoXzOoxPBH0QXxFkl0AC2o/M/eWwQQU2Yot9i
 sthveWtyGNm1TTmZf1rEiJ+2XV/f/Znvgd1nDhGJPoVy/yz2wEaX6WYx6eLpdEVcmXBHcHTrMgC9R
 +NOVsc+9dbqo+Vm4=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hqguU-00GH61-AG
 for v9fs-developer@lists.sourceforge.net; Thu, 25 Jul 2019 16:48:09 +0000
Received: by mail-io1-f71.google.com with SMTP id y13so55490413iol.6
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 25 Jul 2019 09:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=RIyoo7tX1yNs3TKOq4NKYW32kQ5qo7m0vsA24OoRalg=;
 b=F0E3RzCKtRYRSqk3wkXhDedptYbIhLgLfHR4RC1EW1mtFM+QDpI9M2exwmOtPUjggt
 SvnJPV8qi6ZK2N3RpZb6Kb4M/Fd0Fr1bp9DmcbgrbVjq+l5SzvL7UVZTTaop5dP8wziW
 mbthAt+NWzo0kOB8h/WmPBf6zWsAttlCdwAULhUKuwYFRWJUjxpKbtxeUJtNegTKtyJg
 B0SVwa7RcDkiJQFcAu8/Mo0zYIy+ObOoUZeJYuz3A2CvqeFmSgfFxP1RWRIUiQyY20nw
 jMf0R+aVDMk4KQb7/MK6xdgg2CE8cNRWqxPBd14S9K0vnObCp8iJdMhy2FDUT9HyKnMd
 fSnw==
X-Gm-Message-State: APjAAAUcC6sRerW3DlpU6w0wtoJUbd2l1s+PY7ncxE5zjV7WYhsQ31G1
 c5fzrvdW4ZCMV6OIyoEWxCHQW/SEzHtFOkhrtzCO2gvanwnP
X-Google-Smtp-Source: APXvYqz5TRtqk7NLmHZ9yCjKgr37hlCy64JGLcLrJPFsu5MG3DE1E7Gd++DbNYtHpzMzIfx8epvxltXfNlkPKaKIMMo/U8GbRTzt
MIME-Version: 1.0
X-Received: by 2002:a6b:641a:: with SMTP id t26mr37599516iog.3.1564073280346; 
 Thu, 25 Jul 2019 09:48:00 -0700 (PDT)
Date: Thu, 25 Jul 2019 09:48:00 -0700
In-Reply-To: <00000000000070c81a058e6c2917@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000004761fd058e843049@google.com>
From: syzbot <syzbot+15b759334fd44cd9785a@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, catalin.marinas@arm.com, dvyukov@google.com, 
 ericvh@gmail.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
 lucho@ionkov.net, syzkaller-bugs@googlegroups.com, 
 torvalds@linux-foundation.org, v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1hqguU-00GH61-AG
Subject: Re: [V9fs-developer] memory leak in v9fs_session_init
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

syzbot has bisected this bug to:

commit 16490980e396fac079248b23b1dd81e7d48bebf3
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Tue May 17 02:51:04 2016 +0000

     Merge tag 'device-properties-4.7-rc1' of  
git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=115e94cc600000
start commit:   abdfd52a Merge tag 'armsoc-defconfig' of git://git.kernel...
git tree:       upstream
final crash:    https://syzkaller.appspot.com/x/report.txt?x=135e94cc600000
console output: https://syzkaller.appspot.com/x/log.txt?x=155e94cc600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d31de3d88059b7fa
dashboard link: https://syzkaller.appspot.com/bug?extid=15b759334fd44cd9785a
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1735466c600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=117e0cf0600000

Reported-by: syzbot+15b759334fd44cd9785a@syzkaller.appspotmail.com
Fixes: 16490980e396 ("Merge tag 'device-properties-4.7-rc1' of  
git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
