Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3227A242396
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 Aug 2020 03:07:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k5fEX-0004Kp-Gx; Wed, 12 Aug 2020 01:07:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3uUAzXwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1k5fEW-0004Kh-Q2
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Aug 2020 01:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X3NiX6nVSgp11EpijWT3pX7H1MOgqhCnBt3mOeEwKPI=; b=hbLvFfBDcSQLaMD/8qWb37z5Z6
 kdU9r0Aw9wCCTuxG6PiiahPQxJRNfOeuaZHYF4jiIS7JIva5vJ6nMHuYXpwhCC1dbuQkqWY+wp7Te
 p4QsoCTU8RcXu7WZGqAFbltQFgBAdFEqYZabyox4vcoldAVVClrXsBTFuxj7fzbBfvS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=X3NiX6nVSgp11EpijWT3pX7H1MOgqhCnBt3mOeEwKPI=; b=R
 roX88AYNh+A1Z1XKNkOES/dPQYkkmvegM5aS4q9zdRF5I+JNbQeOPDvMppmXXd14mPg/3MZVNGbGi
 8w7uQfiUDt4qqINKxVEG6/YKSrUR7+J21C4eUGzfSrBo8bOu5Xwo+i4onGz2hsAQHXMdgYGDgPZm0
 5mmWCuDnM6gh8j5s=;
Received: from mail-io1-f72.google.com ([209.85.166.72])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k5fEV-007PyB-9D
 for v9fs-developer@lists.sourceforge.net; Wed, 12 Aug 2020 01:07:12 +0000
Received: by mail-io1-f72.google.com with SMTP id e73so475193iof.5
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 11 Aug 2020 18:07:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=X3NiX6nVSgp11EpijWT3pX7H1MOgqhCnBt3mOeEwKPI=;
 b=gptSQCG6xhBy9R0NeT0UiJGFQ9i1SftDzGiUvV8zLd8+MLNkRaljP1P0kW0UkSYet9
 064z9NjOyvJ1biT1Q6Io2GMeZ/rZudplWu1kX8RzKulhdpGwumB1AwRhsGT+VxZafN/i
 brAGebojRWmu8PR+Y1OHTRBAl1znKgOuJVh2zgfmQrvI8Ni6RpMYTwHfeYtgx5SOAJiz
 cEtloyYlPCkZqX3rcIBj9rXIRTBp8/rGePewKzhmIHrG86jcBgZerYRU1kfeu//07UFg
 /rrkm6rsxO7YEPbh5pzp6IlvxFJSeBEOmvBX7bdhsqTje+apo8cFQoWmZjy1W0QnVGkp
 XgvQ==
X-Gm-Message-State: AOAM530MGanr3YbwdyBYpJkiKKCSySWE+IwU4VlZVDK3Piv1JotRTke2
 2RLJtY9CPOkXzuFnGAsDoO5sjrR/XS5bDsWEBsaLEA3TiVUe
X-Google-Smtp-Source: ABdhPJzflhizS6nniBWRSpW8mHijAZdmSAeiEp/VNDrTlrQJdIKYs08rqIEDvlb4OOzwu63y0W80MTCFDtmUkUL4JXTKE6e0ZT1S
MIME-Version: 1.0
X-Received: by 2002:a92:bbc6:: with SMTP id x67mr26231257ilk.235.1597194425363; 
 Tue, 11 Aug 2020 18:07:05 -0700 (PDT)
Date: Tue, 11 Aug 2020 18:07:05 -0700
In-Reply-To: <000000000000b6b450059870d703@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000005c72d405aca3ce17@google.com>
From: syzbot <syzbot+02d9172bf4c43104cd70@syzkaller.appspotmail.com>
To: a.darwish@linutronix.de, akpm@linux-foundation.org, bsegall@google.com, 
 changbin.du@intel.com, clang-built-linux@googlegroups.com, 
 davem@davemloft.net, dietmar.eggemann@arm.com, dvyukov@google.com, 
 elver@google.com, ericvh@gmail.com, hverkuil-cisco@xs4all.nl, 
 jpa@git.mail.kapsi.fi, juri.lelli@redhat.com, kasan-dev@googlegroups.com, 
 keescook@chromium.org, linux-kbuild@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-sparse@vger.kernel.org, luc.vanoostenryck@gmail.com, lucho@ionkov.net, 
 mark.rutland@arm.com, masahiroy@kernel.org, mchehab@kernel.org, 
 mgorman@suse.de, mhiramat@kernel.org, michal.lkml@markovi.net, 
 miguel.ojeda.sandonis@gmail.com, mingo@redhat.com, netdev@vger.kernel.org, 
 paulmck@kernel.org, peterz@infradead.org, rminnich@sandia.gov, 
 rostedt@goodmis.org, rppt@kernel.org, samitolvanen@google.com, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, 
 v9fs-developer@lists.sourceforge.net, vincent.guittot@linaro.org, 
 viro@zeniv.linux.org.uk, vivek.kasireddy@intel.com, will@kernel.org, 
 yepeilin.cs@gmail.com
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.72 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
X-Headers-End: 1k5fEV-007PyB-9D
Subject: Re: [V9fs-developer] KASAN: global-out-of-bounds Read in
 precalculate_color
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

syzbot suspects this issue was fixed by commit:

commit dfd402a4c4baae42398ce9180ff424d589b8bffc
Author: Marco Elver <elver@google.com>
Date:   Thu Nov 14 18:02:54 2019 +0000

    kcsan: Add Kernel Concurrency Sanitizer infrastructure

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13eb65d6900000
start commit:   46cf053e Linux 5.5-rc3
git tree:       upstream
kernel config:  https://syzkaller.appspot.com/x/.config?x=ed9d672709340e35
dashboard link: https://syzkaller.appspot.com/bug?extid=02d9172bf4c43104cd70
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=147e5ac1e00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14b49e71e00000

If the result looks correct, please mark the issue as fixed by replying with:

#syz fix: kcsan: Add Kernel Concurrency Sanitizer infrastructure

For information about bisection process see: https://goo.gl/tpsmEJ#bisection


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
