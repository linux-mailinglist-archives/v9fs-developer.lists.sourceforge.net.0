Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C28FE58D314
	for <lists+v9fs-developer@lfdr.de>; Tue,  9 Aug 2022 07:05:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oLHQk-000150-2T; Tue, 09 Aug 2022 05:05:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <3C-vxYgkbAMY4ABwmxxq3m11up.s00sxq64q3o0z5qz5.o0y@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oLHQi-00014q-9k
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Aug 2022 05:05:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qUzj7rWhLGlDQzF8thFJBaPTyzvuhS4YOtcqLhUFOLs=; b=bEaqQN89MZDNuj2ie7FHAMExkV
 dF9/eqkXAOGnDTCx7rL3UC7YmMhgv8jghC+7lNt3qQOyDaJ2aNJIrIeC1qTvcSY/uHP2qIa+yMTLh
 GBZM8CSFFdkpbBdrHAAeWiX3jhfheo93eeD0H6nk1bcti82Gho+73BR1s0QGdQUqARPQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qUzj7rWhLGlDQzF8thFJBaPTyzvuhS4YOtcqLhUFOLs=; b=a
 q7bWRNgrn4ts0aGI/Lbu7Aobj/Ae5bfq9XH4zeqd/HavFcYjbk11Sf7186fu4hDvd6J+EGvUDY5DB
 Zt76bCUOpKEqwFoG2lYt/zwA0tnTccY+IInQ1ZwFrf//wQv53d0KwfW6OlzlxMoiXTBGUsMjCHQmf
 gwitFRfT21Ka2KWw=;
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oLHQe-0008Ub-Rm
 for v9fs-developer@lists.sourceforge.net; Tue, 09 Aug 2022 05:05:24 +0000
Received: by mail-io1-f69.google.com with SMTP id
 w6-20020a6bf006000000b006845b59a08bso4157405ioc.9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 08 Aug 2022 22:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc;
 bh=qUzj7rWhLGlDQzF8thFJBaPTyzvuhS4YOtcqLhUFOLs=;
 b=FDxMRKO8IEgnnOCaJMmNnaYNj7UFZY30MoPfN0mGQDjcLCQ9UcVqynHTrpGBEbHX0f
 /hAMzrN+qSu7t/DcsjpPHxoxU+EkDwqrtwiHD4Q0K4YJP1/aaTISYsEh0+PdihbWD3E/
 M9swKeyJ3SLJWpCp4jMlMDLWsjK6fNLMmIm6VQxKW1ILosrBkOPzM+67TOx8Y90NxHnX
 /Znos4HoaudE3qnT0IfrC75Cyo4QXA0vdZc3UMYCdHpYl+vrNO9Par8DVIu5VFCUxm57
 1j3bb/GlIzKE6M870CFAnANK7VhgHqrKxlQ16q2Fed2seT7+c3V+EeyA1EShdbJjh8Yd
 T7hg==
X-Gm-Message-State: ACgBeo2FoLxgXPX+hPBPLKdUd8Xi991Ab1q3uVhR2Ogzkw0mtDB5H5xs
 A1jfbVsU2iF/Z3LQPE0+pEPxxMCXTWflZg5lGbOH/mg9oHLy
X-Google-Smtp-Source: AA6agR5aIg7EG5tXDrRBXY91bjwDVFTlTStKPPlUOZ01fdT3atbXH2xDpCmUABiiS8AOM2W3io5UvxFVHYr9g5xTSjShCrM8MkT7
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1a41:b0:2de:e162:c5bb with SMTP id
 u1-20020a056e021a4100b002dee162c5bbmr9825959ilv.102.1660021515241; Mon, 08
 Aug 2022 22:05:15 -0700 (PDT)
Date: Mon, 08 Aug 2022 22:05:15 -0700
In-Reply-To: <000000000000cad57405e5b5dbb7@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bc500505e5c7e01f@google.com>
From: syzbot <syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com>
To: andrei.otcheretianski@intel.com, asmadeus@codewreck.org, 
 davem@davemloft.net, edumazet@google.com, ericvh@gmail.com, 
 fgheet255t@gmail.com, johannes.berg@intel.com, johannes@sipsolutions.net, 
 kuba@kernel.org, linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux_oss@crudebyte.com, lucho@ionkov.net, netdev@vger.kernel.org, 
 pabeni@redhat.com, syzkaller-bugs@googlegroups.com, 
 v9fs-developer@lists.sourceforge.net
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot has bisected this issue to: commit
 54283409cd162fc60480df514924ed4cb313735e
 Author: Andrei Otcheretianski <andrei.otcheretianski@intel.com> Date: Tue
 Jun 14 14:20:04 2022 +0000 wifi: mac80211: Consider MLO links in offchannel
 logic Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.69 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.69 listed in list.dnswl.org]
X-Headers-End: 1oLHQe-0008Ub-Rm
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_req_put
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

syzbot has bisected this issue to:

commit 54283409cd162fc60480df514924ed4cb313735e
Author: Andrei Otcheretianski <andrei.otcheretianski@intel.com>
Date:   Tue Jun 14 14:20:04 2022 +0000

    wifi: mac80211: Consider MLO links in offchannel logic

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1046e22a080000
start commit:   ca688bff68bc Add linux-next specific files for 20220808
git tree:       linux-next
final oops:     https://syzkaller.appspot.com/x/report.txt?x=1246e22a080000
console output: https://syzkaller.appspot.com/x/log.txt?x=1446e22a080000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4c20e006003cdecb
dashboard link: https://syzkaller.appspot.com/bug?extid=50f7e8d06c3768dd97f3
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11f6ea66080000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1640de8e080000

Reported-by: syzbot+50f7e8d06c3768dd97f3@syzkaller.appspotmail.com
Fixes: 54283409cd16 ("wifi: mac80211: Consider MLO links in offchannel logic")

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
