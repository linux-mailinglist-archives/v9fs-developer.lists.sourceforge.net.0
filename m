Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C64CA9ED739
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Dec 2024 21:28:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tLTJb-000806-5q;
	Wed, 11 Dec 2024 20:28:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <30vVZZwkbAGcXdePFQQJWFUUNI.LTTLQJZXJWHTSYJSY.HTR@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tLTJZ-0007zz-4H for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 20:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TWvuUMY0G+wmikjDT3RK+2qc8QdMPprFL6z15qVZK/A=; b=bWeX0GHJbOnBhmQczIDt88qH1E
 WBemaj+P9JKpIL14yJmb2p04ej7XBAdxuRA98Xa8u/LQGEl/L02faqWvH/owSMm9ZCBsNEy7Zxn9K
 E/gkVHnKo+fKqIRmbUyVXZ6HgV0hFgiUpfkmwEe24U0+89sJOTlHqEf7HKDMEpxbKV2s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TWvuUMY0G+wmikjDT3RK+2qc8QdMPprFL6z15qVZK/A=; b=V
 bZxWgiIBz3tpwfjupNvYPOrTKzT3MaRBT24Q9M8hiybqB3MFG873+MBytHRsw0q2oveLND5kPM2Jp
 UpuCY+1+ZNv/bfymmame6vo3MSAnNssjeAFnQB/WYDH1x0S/BV7xAtv31irPed0vDnpn4MasXcLR9
 y31QtXZPGQoTOhRw=;
Received: from mail-il1-f199.google.com ([209.85.166.199])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tLTJY-0002mS-FC for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Dec 2024 20:28:09 +0000
Received: by mail-il1-f199.google.com with SMTP id
 e9e14a558f8ab-3a814c7d58eso57330085ab.1
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 11 Dec 2024 12:28:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733948883; x=1734553683;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TWvuUMY0G+wmikjDT3RK+2qc8QdMPprFL6z15qVZK/A=;
 b=IdxBA5Om6CVPd+vfCwxzVtlDqQdCiDRQqZZC8dNvfmOcM+jf/v5nAKRKssP/pcMA4V
 h11aFS0gOH9MYEXQk283FdhIJlklZs/ZdtpA1EYZATeuNPlBw1808AQEyQOuJ4TtftuM
 XIFOlr82Ng4Iienv0uz+7tXvUAvc500n82mfuuEYoZBqVdkOnYgMuCGi3GCPcAtCl9AN
 lBiI0JebGDs3XgbDhwKPsrGYWVOcgmv96ogfLlWe6kaeWtEzhma4xUXNC63cXdSU9khK
 EuBL9Ud/qdxvxA35BV2+0Ch59gh2R8hT760ga8MOqH9sX2d3y8lkn9M+j1N37BVincT1
 /Kow==
X-Forwarded-Encrypted: i=1;
 AJvYcCXBgOon47v8G8tHgv1TybTKbGEDK6Or8qTO9j9iojFQh0Gq6seTMtavYJuUe1UBTbYBCA8RR4iU64r71A8SEw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx67PR31r2JnsZg0maEmj/8PiJKPltqXPq1/pVrU66Yb3wyUqdM
 9J1U5mWa/Zh69WBcQQKnBHBG6ccEH99YHytiydFhSN+LXL9jUfMQFUBDyvdDrdG4hSvkZzjVV98
 b6HIMaZUHUfWpUiQDe7fnNYdNln0fMAwCSQbo/FCOm3Yaw7ahhHbDeos=
X-Google-Smtp-Source: AGHT+IFU4/JJhgeFmeUgOTOiFlptRuRRWPCJkZ0E7Hx/P2REuhArQvWWkxw4t8dMVmrVYchAgd8/ib9uHjlZQsLpg9MXrqKFdQ0W
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1609:b0:3a7:c3aa:a82b with SMTP id
 e9e14a558f8ab-3ac49fdfa0emr11002455ab.1.1733948882793; Wed, 11 Dec 2024
 12:28:02 -0800 (PST)
Date: Wed, 11 Dec 2024 12:28:02 -0800
In-Reply-To: <20241211200240.103853-1-leocstone@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6759f5d2.050a0220.17f54a.0045.GAE@google.com>
From: syzbot <syzbot+03fb58296859d8dbab4d@syzkaller.appspotmail.com>
To: asmadeus@codewreck.org, ericvh@gmail.com, ericvh@kernel.org, 
 leocstone@gmail.com, linux-fsdevel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux_oss@crudebyte.com, lucho@ionkov.net, 
 syzkaller-bugs@googlegroups.com, torvalds@linux-foundation.org, 
 v9fs-developer@lists.sourceforge.net, v9fs@lists.linux.dev, 
 viro@zeniv.linux.org.uk
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot tried to test the proposed patch but the build/boot
 failed: drivers/gpu/drm/i915/gt/intel_rc6.c:139:19: error: static assertion
 expression is not an integral constant expression
 drivers/gpu/drm/i915/gt/intel_rc6.c:140:12:
 error: static assertion expression is [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.199 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.199 listed in sa-trusted.bondedsender.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.199 listed in wl.mailspike.net]
X-Headers-End: 1tLTJY-0002mS-FC
Subject: Re: [V9fs-developer] [syzbot] [v9fs?] WARNING in
 __alloc_frozen_pages_noprof
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

Hello,

syzbot tried to test the proposed patch but the build/boot failed:

drivers/gpu/drm/i915/gt/intel_rc6.c:139:19: error: static assertion expression is not an integral constant expression
drivers/gpu/drm/i915/gt/intel_rc6.c:140:12: error: static assertion expression is not an integral constant expression
fs/bcachefs/str_hash.c:164:2: error: expected expression
fs/bcachefs/str_hash.c:165:30: error: use of undeclared identifier 'inode'
fs/bcachefs/str_hash.c:169:55: error: use of undeclared identifier 'inode'
fs/bcachefs/str_hash.c:171:40: error: use of undeclared identifier 'inode'


Tested on:

commit:         91e71d60 Add linux-next specific files for 20241211
git tree:       linux-next
kernel config:  https://syzkaller.appspot.com/x/.config?x=76f158395f6f15fd
dashboard link: https://syzkaller.appspot.com/bug?extid=03fb58296859d8dbab4d
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=12987544580000



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
