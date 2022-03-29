Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C84EB713
	for <lists+v9fs-developer@lfdr.de>; Wed, 30 Mar 2022 01:52:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nZLV5-000148-UE; Tue, 29 Mar 2022 23:51:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1nZLV4-000142-FD
 for v9fs-developer@lists.sourceforge.net; Tue, 29 Mar 2022 23:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jLOdyVM2slFwDQ6ud3EEJpcePnsBDvL67+l3rWTkEK0=; b=aNJsBcRpJKPjJymh3vKjo2RfqR
 5qq+X+sMlbRgv1wRW+5zlXSQjIG28YCvatNs0ko7WNoE/mggv3G5O/kt9D/SwuGVcjHd8SQ8vc9fX
 S4ZlGMB0it0FunLqQTUfidv4awpsLg/g7GV7vZwbwG4N8YOdzhawr3dIhJQSM7FDW4Lg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jLOdyVM2slFwDQ6ud3EEJpcePnsBDvL67+l3rWTkEK0=; b=BLbobopUi28YDS6fSsz+Uoy1HE
 Vp0cdGIdx8JemsuggxhKZbkHvUiGk/HPN/ekb7kqcS56dkKPDamBRPQfjfcLATKtp3Wg14rNTD1Ou
 v7Py/6az3VjVmmfZHDRu1OhA0fGyqUVRLRHNBfirOPZ9exwwiguZyQrrOyJWVW6HcHp4=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZLct-00GQjk-15
 for v9fs-developer@lists.sourceforge.net; Tue, 29 Mar 2022 23:51:58 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 57856C01C; Wed, 30 Mar 2022 01:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648597903; bh=jLOdyVM2slFwDQ6ud3EEJpcePnsBDvL67+l3rWTkEK0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qpnOrvYuaFA3wQMV1QjxFc8hS9HuoBPuPaq5FjOsy05p2Ql45LIYYqk4ONVkk19jd
 X3qUe8g6050dw+ebDxZUC2yskbMFRLDT2vIglWTIIR4oe9o+glMUkrQf/oht/3YHGS
 gAG6IqwtisESrx1Jn/rxirNjq3O7S/smEY3hjJynBuXIBwFYNeng4ltVP3X9gks7l+
 10Qd6ZRZldcIxofUXcx+xq+9WdXZQugWuYwzYGCFpydTWIMZgjC6k+d5j5H44XXKE2
 EbHi28+pi9NDTq2S+DXTbYkzTJZG+zHf06YV8Xz0EkZ/w7k8OB0R+PcahMAHd1Dq+c
 eNoFTMWf9sLyQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 1FEACC009;
 Wed, 30 Mar 2022 01:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1648597902; bh=jLOdyVM2slFwDQ6ud3EEJpcePnsBDvL67+l3rWTkEK0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PtVWwq7Fo8GoQcPMIfURyPC1Sxs2eFO7I9eHzWRfkrBqQ1/Tp+ZokCO8TkM6rUnBx
 bh7zXNjZp12DBuR+nOfVujMJowryR1AG3JUusOdB9CZ5bRClxCVAN5nYlQ5YC+gCY7
 c44Uff4jSsNNN0bh/hSpK7MxecqojFAX8YwJrPFKPRzf0oB7kU6NXhUdjrWllu35E0
 e5KeOsEaHU6fawu/Cwctv91iZ3cdbLVMHSJSrZHsbKIFMmrLLoLJ2gfkXvMEg08aON
 u6/oEp3yNAtlLTrBIYnq4RrREgHuajzFphEfg2z/2OQQGIceem5EcZi5mYQ3bYNQ2s
 4VUbim3sqct5A==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1051c843;
 Tue, 29 Mar 2022 23:51:36 +0000 (UTC)
Date: Wed, 30 Mar 2022 08:51:21 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <YkObebLZMp5AyRpr@codewreck.org>
References: <0000000000009523b605db620972@google.com>
 <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <385ce718-f965-4005-56b6-34922c4533b8@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Tetsuo Handa wrote on Wed, Mar 30, 2022 at 07:35:47AM +0900:
 > This seems to be an example of >
 https://lkml.kernel.org/r/49925af7-78a8-a3dd-bce6-cfc02e1a9236@I-love.SAKURA.ne.jp
 > introduced by "ext4 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1nZLct-00GQjk-15
Subject: Re: [V9fs-developer] [syzbot] possible deadlock in p9_write_work
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
Cc: Andreas Dilger <adilger@dilger.ca>,
 Andrew Perepechko <andrew.perepechko@hpe.com>, Theodore Ts'o <tytso@mit.edu>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 syzbot <syzbot+bde0f89deacca7c765b8@syzkaller.appspotmail.com>,
 v9fs-developer@lists.sourceforge.net,
 "open list:EXT4 FILE SYSTEM" <linux-ext4@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Tetsuo Handa wrote on Wed, Mar 30, 2022 at 07:35:47AM +0900:
> This seems to be an example of
> https://lkml.kernel.org/r/49925af7-78a8-a3dd-bce6-cfc02e1a9236@I-love.SAKURA.ne.jp
> introduced by "ext4: truncate during setxattr leads to kernel panic".

Thanks for the pointer

> Please don't use schedule_work() if you need to use flush_scheduled_work().

In this case we don't call flush_scheduled_work -- ext4 does.
The problem is mixing in the two subsystems when someone (e.g. syzbot)
opens an ext4 file and passes that fd to 9p when mounting with e.g.
mount -t 9p -o rfdno=<no>,wfdno=<no>

Frankly that's just not something I consider useful, interacting through
9p to a local file doesn't make sense except for testing.

If that is a real problem, the simplest way out would be to just forbid
non-socket FDs if it's something we can check.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
